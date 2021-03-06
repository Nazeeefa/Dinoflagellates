## Aligning reads (for each sample) to the assembly (*.nt.fa) for each file:

###### SHTV-5 against all for comparisons:

* SHTV-5_0 (59):

 * Running .fa file against all fastq files of seven samples (shown below)
 
 * We expect two bam files for each i.e. one from aligning the reads to the assembly (*.bam) + one from indexing via samtools (*.bai)

#### Batch Run:

| SRR + Sample Name          | SHTV-5_0 (59)      |  SHTV-5_3 (60) | SHTV-5_30 (61)	| 
|--------                    | -------------------|-----           |---	       	    | 
| SRR1296786 + SHTV-5_0 (59) |         X          |   -	           |  	-            | 
| SRR1296972 +  SHTV-5_3 (60)|         -          |   X	           |  	-            | 
| SRR1294400 + SHTV-5_30 (61)|         -         |   -	           |  	X            | 	       
| SRR1296793 + SHHI-4_0 (67)|         -          |   -	           |  	-            |        
| SRR1296794 + SHHI-4_3 (68)|         -          |   -	           |  	-            | 	       
| SRR1296796 + SHHI-4_30 (69)|        -          |   -	           |  	-            | 	       
| SRR1294439 + PAER-2_0 (70)|         -          |   -	           |  	-            |        
| SRR1294440 + PAER-2_3 (71)|         -          |   -	           |  	-            | 	     

#### Results - Alignment Rate:

See alignment_rates_all.md in "bowtie_all" directory.

For alignment info of (forward and reverse) reads back to assembly of sample itself, see files named as: bowtie_align_59.txt  

- ABySS to see how fasta files were generated

Information:

- CD-HIT-EST not required as this has already been done by MMETSP project.
- short transcriptome assembly, more likely for duplicates to be placed as there will be less spaces "opportunities" to occupy so it is likely for multiple sequences to align at one place.
- in terms of genomes e.g. human genome assembly, large assemblies means there are less likely to be duplicates
- duplicates could be due to PCR hence start and end of sequences appear different than middle.
- There are more chances for better representations
- length of sequences vary from end-to-end depending on fragments selected e.g. if target to fragmentise sequence is 100bp then in a lnegth of 1000bp rest of the reads are discarded.
