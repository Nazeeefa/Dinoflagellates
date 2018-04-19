# Snakemake version 4.8.0 (-py36_0)

# http://pedagogix-tagc.univ-mrs.fr/courses/ABD/practical/snakemake/snake_intro.html

"""
Author: Nazeefa Fatima
Affiliation: LU
Aim: A simple Snakemake workflow to process paired-end RNA-Seq.
Run: snakemake   -s Snakefile   
Latest modification: 
  - todo
"""

import config
import glob
import os
import gzip

def get_read_len(wildcards):
     f=gzip.open((wildcards + "_1.nt.fa"),'rb**')
     seq=f.readline()
     seq=f.readline()
     f.close()
     return(str(len(seq)-1))

def getpath(wildcards):
     mysplit=wildcards.split('/')
     return(mysplit[0]+"/"+mysplit[1])

# Input samples:
SAMPLES = [fname.split('.')[0] for fname in glob.glob('***')]
print(SAMPLES)

rule all:
     params: batch='-l nodes=1:***'
     input: expand('{sample}.counts', sample=SAMPLES)

# For each sample, reads are aligned back to each of the SHTV-5 'fa' file i.e. being used as reference assembly (rule assembly).
rule runbowtie:
    """Run fastq-dump to convert sra format to fastq files, creating .fq"""
    input: "{sample}.***"
    output: "{sample}_1.bam"
    params: batch = "-l nodes=1:g8", mydir = lambda wildcards: getpath(wildcards.sample)
    threads: 1
    shell: """module load sratoolkit; fastq-dump -split-files --gzip {input} -O {params.mydir} """
