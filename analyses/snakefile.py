# Snakemake version 4.8.0 (-py36_0)

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
     
rule runbowtie:
    """Run fastq-dump to convert sra format to fastq files, creating .fq"""
    input: "{sample}.***"
    output: "{sample}_1.bam"
    params: batch = "-l nodes=1:g8", mydir = lambda wildcards: getpath(wildcards.sample)
    threads: 1
    shell: """module load sratoolkit; fastq-dump -split-files --gzip {input} -O {params.mydir} """
