
        ==========     _____ _    _ ____  _____  ______          _____  
        =====         / ____| |  | |  _ \|  __ \|  ____|   /\   |  __ \                                                                                                                                           
          =====      | (___ | |  | | |_) | |__) | |__     /  \  | |  | |                                                                                                                                          
            ====      \___ \| |  | |  _ <|  _  /|  __|   / /\ \ | |  | |                                                                                                                                          
              ====    ____) | |__| | |_) | | \ \| |____ / ____ \| |__| |                                                                                                                                          
        ==========   |_____/ \____/|____/|_|  \_\______/_/    \_\_____/                                                                                                                                           
          v1.6.2

//========================== featureCounts setting ===========================\\
||                                                                            ||
||             Input files : 8 BAM files                                      ||
||                           P bowtie2_59.bam                                 ||
||                           P 59_bowtie2_SHTV-5_3.bam                        ||
||                           P 59_bowtie2_SHTV-5_30.bam                       ||
||                           P 59_bowtie2_SHHI-4_0.bam                        ||
||                           P 59_bowtie2_SHHI-4_3.bam                        ||
||                           P 59_bowtie2_SHHI-4_30.bam                       ||
||                           P 59_bowtie2_PAER-2_0.bam                        ||
||                           P 59_bowtie2_PAER-2_3.bam                        ||
||                                                                            ||
||             Output file : MMETSP0359_counts.txt                            ||
||                 Summary : MMETSP0359_counts.txt.summary                    ||
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
||    Features : 216633                                                       ||
||    Meta-features : 216633                                                  ||
||    Chromosomes/contigs : 55656                                             ||
||                                                                            ||
|| Process BAM file bowtie2_59.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 26272786                                              ||
||    Successfully assigned fragments : 1121470 (4.3%)                        ||
||    Running time : 1.30 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_SHTV-5_3.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 16051171                                              ||
||    Successfully assigned fragments : 677927 (4.2%)                         ||
||    Running time : 0.80 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_SHTV-5_30.bam...                               ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 19667771                                              ||
||    Successfully assigned fragments : 976921 (5.0%)                         ||
||    Running time : 0.97 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_SHHI-4_0.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 20480630                                              ||
||    Successfully assigned fragments : 950623 (4.6%)                         ||
||    Running time : 1.03 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_SHHI-4_3.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 20162540                                              ||
||    Successfully assigned fragments : 976389 (4.8%)                         ||
||    Running time : 1.02 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_SHHI-4_30.bam...                               ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 21015699                                              ||
||    Successfully assigned fragments : 1204890 (5.7%)                        ||
||    Running time : 1.05 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_PAER-2_0.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 16122569                                              ||
||    Successfully assigned fragments : 772563 (4.8%)                         ||
||    Running time : 0.88 minutes                                             ||
||                                                                            ||
|| Process BAM file 59_bowtie2_PAER-2_3.bam...                                ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 16441167                                              ||
||    Successfully assigned fragments : 842774 (5.1%)                         ||
||    Running time : 0.90 minutes                                             ||
||                                                                            ||
||                         Read assignment finished.                          ||
||                                                                            ||
|| Summary of counting results can be found in file "MMETSP0359_counts.txt.s  ||
|| ummary"                                                                    ||
||                                                                            ||
\\===================== http://subread.sourceforge.net/ ======================//
