#### All against 60 as reference:

Go to /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/**sample**_bowtie_0/**sampleNumber**_bowtie_samples

Note: transdecode file PATH has been changed e.g. /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/60_transdecode...

```
/home/nazeefa/bin/subread-1.6.2-source/bin/featureCounts -p -t exon -g ID -a /home/nazeefa/dinoflagellates/MMETSP03/Data/transdecode_runs/60_transdecode/MMETSP0360.nt.fa.transdecoder_dir/longest_orfs.gff3 -o MMETSP0360_counts.txt ../bowtie2_60.bam 60_bowtie2_SHTV-5_0.bam 60_bowtie2_SHTV-5_30.bam 60_bowtie2_SHHI-4_0.bam 60_bowtie2_SHHI-4_3.bam 60_bowtie2_SHHI-4_30.bam 60_bowtie2_PAER-2_0.bam 60_bowtie2_PAER-2_3.bam
```
//========================== featureCounts setting ===========================\\
||                                                                            ||
||             Input files : 8 BAM files                                      ||
||                           P bowtie2_60.bam                                 ||
||                           P 60_bowtie2_SHTV-5_0.bam                        ||
||                           P 60_bowtie2_SHTV-5_30.bam                       ||
||                           P 60_bowtie2_SHHI-4_0.bam                        ||
||                           P 60_bowtie2_SHHI-4_3.bam                        ||
||                           P 60_bowtie2_SHHI-4_30.bam                       ||
||                           P 60_bowtie2_PAER-2_0.bam                        ||
||                           P 60_bowtie2_PAER-2_3.bam                        ||
||                                                                            ||
||             Output file : MMETSP0360_counts.txt                            ||
||                 Summary : MMETSP0360_counts.txt.summary                    ||
||              Annotation : longest_orfs.gff3 (GTF)                          ||
||      Dir for temp files : ./                                               ||
||                                                                            ||
||                 Threads : 1                                                ||
||                   Level : meta-feature level                               ||
||              Paired-end : yes                                              ||
||      Multimapping reads : not counted                                      ||
|| Multi-overlapping reads : not counted                                      ||
||   Min overlapping bases : 1                                                ||
||                                                                            ||
||          Chimeric reads : counted                                          ||
||        Both ends mapped : not required                                     ||
||                                                                            ||
\\===================== http://subread.sourceforge.net/ ======================//

//================================= Running ==================================\\
||                                                                            ||
|| Load annotation file longest_orfs.gff3 ...                                 ||
||    Features : 131821                                                       ||
||    Meta-features : 131821                                                  ||
||    Chromosomes/contigs : 39823                                             ||
||                                                                            ||
|| Process BAM file bowtie2_60.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 14268673                                              ||
||    Successfully assigned fragments : 943712 (6.6%)                         ||
||    Running time : 0.75 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_SHTV-5_0.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 22987748                                              ||
||    Successfully assigned fragments : 1572137 (6.8%)                        ||
||    Running time : 1.38 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_SHTV-5_30.bam...                               ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 16784530                                              ||
||    Successfully assigned fragments : 1225512 (7.3%)                        ||
||    Running time : 0.96 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_SHHI-4_0.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 17191244                                              ||
||    Successfully assigned fragments : 1221449 (7.1%)                        ||
||    Running time : 0.97 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_SHHI-4_3.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 16901493                                              ||
||    Successfully assigned fragments : 1275817 (7.5%)                        ||
||    Running time : 0.98 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_SHHI-4_30.bam...                               ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 17418447                                              ||
||    Successfully assigned fragments : 1512148 (8.7%)                        ||
||    Running time : 0.99 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_PAER-2_0.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 13580310                                              ||
||    Successfully assigned fragments : 1298985 (9.6%)                        ||
||    Running time : 0.80 minutes                                             ||
||                                                                            ||
|| Process BAM file 60_bowtie2_PAER-2_3.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 13751460                                              ||
||    Successfully assigned fragments : 1171533 (8.5%)                        ||
||    Running time : 0.80 minutes                                             ||
||                                                                            ||
||                         Read assignment finished.                          ||
||                                                                            ||
|| Summary of counting results can be found in file "MMETSP0360_counts.txt.s  ||
|| ummary"                                                                    ||
||                                                                            ||
\\===================== http://subread.sourceforge.net/ ======================//
