## Multiple paired-end datasets Run 

#### All against 59 as reference - SHTV-5_0 (59) / Test RUN :
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0359_counts.txt /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/bowtie2_59.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_SHTV-5_3.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_SHTV-5_30.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_SHHI-4_0.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_SHHI-4_3.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_SHHI-4_30.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_PAER-2_0.bam /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/59_bowtie_samples/59_bowtie2_PAER-2_3.bam
```

#### All against 59 as reference - SHTV-5_0 (59):

Go to /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/**sample**_bowtie_0/**sampleNumber**_bowtie_samples
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/59_transdecode/MMETSP0359.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0359_counts.txt ../bowtie2_59.bam 59_bowtie2_SHTV-5_3.bam 59_bowtie2_SHTV-5_30.bam 59_bowtie2_SHHI-4_0.bam 59_bowtie2_SHHI-4_3.bam 59_bowtie2_SHHI-4_30.bam 59_bowtie2_PAER-2_0.bam 59_bowtie2_PAER-2_3.bam
```

-p If specified, fragments (or templates) will be counted
                      instead of reads. Only applicable for
                      paired-end reads <br>
-t Specify feature type in GTF annotation. 'exon' by 
                      default. Features used for read counting will be 
                      extracted from annotation using the provided value (which, in this case, is exon). <br>
-g Specify attribute type in GTF annotation. 'gene_id' by 
                      default. Meta-features used for read counting will be 
                      extracted from annotation using the provided value (again, default 'gene_id' is used) <br>
-a Name of an annotation file. GTF/GFF format by default. <br>
-o Name of the output file including read counts. A separate
                      file including summary statistics of counting results is
                      also included in the output
                      
#### SHTV-5_3 (60):
                   
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/60_transdecode/MMETSP0360.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0360_counts.txt ../bowtie2_60.bam 60_bowtie2_SHTV-5_0.bam 60_bowtie2_SHTV-5_30.bam 60_bowtie2_SHHI-4_0.bam 60_bowtie2_SHHI-4_3.bam 60_bowtie2_SHHI-4_30.bam 60_bowtie2_PAER-2_0.bam 60_bowtie2_PAER-2_3.bam
```
#### SHTV-5_30 (61)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/61_transdecode/MMETSP0361.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0361_counts.txt ../bowtie2_61.bam 61_bowtie2_SHTV-5_0.bam 61_bowtie2_SHTV-5_3.bam 61_bowtie2_SHHI-4_0.bam 61_bowtie2_SHHI-4_3.bam 61_bowtie2_SHHI-4_30.bam 61_bowtie2_PAER-2_0.bam 61_bowtie2_PAER-2_3.bam
```
#### SHHI-4_0 (67)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/67_transdecode/MMETSP0367.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0367_counts.txt ../bowtie2_67.bam 67_bowtie2_SHTV-5_0.bam 67_bowtie2_SHTV-5_3.bam 67_bowtie2_SHTV-5_30.bam 67_bowtie2_SHHI-4_3.bam 67_bowtie2_SHHI-4_30.bam 67_bowtie2_PAER-2_0.bam 67_bowtie2_PAER-2_3.bam 2>> MMETSP0367_featurecounts_run.txt
```
#### SHHI-4_3 (68)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/68_transdecode/MMETSP0368.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0368_counts.txt ../bowtie2_68.bam 68_bowtie2_SHTV-5_0.bam 68_bowtie2_SHTV-5_3.bam 68_bowtie2_SHTV-5_30.bam 68_bowtie2_SHHI-4_0.bam 68_bowtie2_SHHI-4_30.bam 68_bowtie2_PAER-2_0.bam 68_bowtie2_PAER-2_3.bam 2>> MMETSP0368_featurecounts_run.txt
```
#### SHHI-4_30 (69)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/6_transdecode/MMETSP0369.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0369_counts.txt ../bowtie2_69.bam 69_bowtie2_SHTV-5_0.bam 69_bowtie2_SHTV-5_3.bam 69_bowtie2_SHTV-5_30.bam 69_bowtie2_SHHI-4_0.bam 69_bowtie2_SHHI-4_3.bam 69_bowtie2_PAER-2_0.bam 69_bowtie2_PAER-2_3.bam 2>> MMETSP0369_featurecounts_run.txt
```
#### PAER-2_0 (70)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/70_transdecode/MMETSP0370.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0370_counts.txt ../bowtie2_70.bam 70_bowtie2_SHTV-5_0.bam 70_bowtie2_SHTV-5_3.bam 70_bowtie2_SHTV-5_30.bam 70_bowtie2_SHHI-4_0.bam 70_bowtie2_SHHI-4_3.bam 70_bowtie2_SHHI-4_30.bam 70_bowtie2_PAER-2_3.bam 2>> MMETSP0370_featurecounts_run.txt
```
#### PAER-2_3 (71)
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/71_transdecode/MMETSP0371.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0371_counts.txt ../bowtie2_71.bam 71_bowtie2_SHTV-5_0.bam 71_bowtie2_SHTV-5_3.bam 71_bowtie2_SHTV-5_30.bam 71_bowtie2_SHHI-4_0.bam 71_bowtie2_SHHI-4_3.bam 71_bowtie2_SHHI-4_30.bam 71_bowtie2_PAER-2_0.bam 2>> MMETSP0371_featurecounts_run.txt
```
