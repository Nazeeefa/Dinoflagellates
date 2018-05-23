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
||                           P bowtie2_60.bam                                 ||
||                           P bowtie2_61.bam                                 ||
||                           P bowtie2_67.bam                                 ||
||                           P bowtie2_68.bam                                 ||
||                           P bowtie2_69.bam                                 ||
||                           P bowtie2_70.bam                                 ||
||                           P bowtie2_71.bam                                 ||
||                                                                            ||
||             Output file : 59_all_counts.txt                                ||
||                 Summary : 59_all_counts.txt.summary                        ||
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
||    Running time : 1.31 minutes                                             ||
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
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 0.74 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_61.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 19791423                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 0.92 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_67.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 20491122                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 1.15 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_68.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 20090059                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 1.05 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_69.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 21414022                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 1.11 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_70.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 17498212                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 0.95 minutes                                             ||
||                                                                            ||
|| Process BAM file bowtie2_71.bam...                                         ||
||    Paired-end reads are included.                                          ||
||    Assign fragments (read pairs) to features...                            ||
||                                                                            ||
||    WARNING: reads from the same pair were found not adjacent to each       ||
||             other in the input (due to read sorting by location or         ||
||             reporting of multi-mapping read pairs).                        ||
||                                                                            ||
||    Pairing up the read pairs.                                              ||
||                                                                            ||
||    Total fragments : 18048344                                              ||
||    Successfully assigned fragments : 0 (0.0%)                              ||
||    Running time : 1.04 minutes                                             ||
||                                                                            ||
||                         Read assignment finished.                          ||
||                                                                            ||
|| Summary of counting results can be found in file "59_all_counts.txt.summa  ||
|| ry"                                                                        ||
||                                                                            ||
\\===================== http://subread.sourceforge.net/ ======================//
