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
                      
### To run featurecounts in R:
```
library(Rsubread)
```
```
fc <- featureCounts(bam.files, annot.ext="longest_orfs.gff3",isGTFAnnotationFile=TRUE,isPaired=TRUE, GTF.featureType="exon", GTF.attrType="ID", autosort=TRUE, checkFragLength=TRUE)
```
