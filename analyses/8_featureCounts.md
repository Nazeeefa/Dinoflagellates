### FeatureCounts (Version 1.6.2)

[Download](http://bioinf.wehi.edu.au/featureCounts/)

[Why featureCounts is better for paired-end](https://www.biostars.org/p/96176/)

#### Testing featureCounts
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -t exon -g gene_id -a /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir/longest_orfs.gff3 -o counts.txt /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/59_bowtie_0/bowtie2_59.bam
```
#### Multiple paired-end datasets:
```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g gene_id -a /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir/longest_orfs.gff3 -o counts.txt /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/*.bam
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


