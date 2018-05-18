#### All against 60 as reference:

Go to /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/**sample**_bowtie_0/**sampleNumber**_bowtie_samples

Note: transdecode file PATH has been changed e.g. /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/60_transdecode...

```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/60_transdecode/MMETSP0360.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0360_counts.txt ../bowtie2_60.bam 60_bowtie2_SHTV-5_0.bam 60_bowtie2_SHTV-5_30.bam 60_bowtie2_SHHI-4_0.bam 60_bowtie2_SHHI-4_3.bam 60_bowtie2_SHHI-4_30.bam 60_bowtie2_PAER-2_0.bam 60_bowtie2_PAER-2_3.bam
```
