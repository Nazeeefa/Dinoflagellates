## FOR MMETSP0370 (PAER-2, 0 PSU) against all:
```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x ../MMETSP0370.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 70_bowtie2_$sample.bam | echo "processed"; done
```
### SHTV-5_0

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    12715580 (46.47%) aligned concordantly 0 times
    12742910 (46.56%) aligned concordantly exactly 1 time
    1907369 (6.97%) aligned concordantly >1 times
    ----
    12715580 pairs aligned concordantly 0 times; of these:
      430671 (3.39%) aligned discordantly 1 time
    ----
    12284909 pairs aligned 0 times concordantly or discordantly; of these:
      24569818 mates make up the pairs; of these:
        21533695 (87.64%) aligned 0 times
        2074452 (8.44%) aligned exactly 1 time
        961671 (3.91%) aligned >1 times
60.66% overall alignment rate
[bam_sort_core] merging from 14 files...

### SHTV-5_3

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    7959535 (47.42%) aligned concordantly 0 times
    7693584 (45.83%) aligned concordantly exactly 1 time
    1132770 (6.75%) aligned concordantly >1 times
    ----                                                                                                                                                           
    7959535 pairs aligned concordantly 0 times; of these:                                                                                                          
      204608 (2.57%) aligned discordantly 1 time                                                                                                                   
    ----                                                                                                                                                           
    7754927 pairs aligned 0 times concordantly or discordantly; of these:                                                                                          
      15509854 mates make up the pairs; of these:                                                                                                                  
        13921827 (89.76%) aligned 0 times                                                                                                                          
        1119432 (7.22%) aligned exactly 1 time                                                                                                                     
        468595 (3.02%) aligned >1 times                                                                                                                            
58.53% overall alignment rate                                                                                                                                      
[bam_sort_core] merging from 9 files... 

### SHTV-5_30

20841201 reads; of these:                                                                                                                                          
  20841201 (100.00%) were paired; of these:                                                                                                                        
    10113031 (48.52%) aligned concordantly 0 times                                                                                                                 
    9329516 (44.76%) aligned concordantly exactly 1 time                                                                                                           
    1398654 (6.71%) aligned concordantly >1 times                                                                                                                  
    ----                                                                                                                                                           
    10113031 pairs aligned concordantly 0 times; of these:                                                                                                         
      290698 (2.87%) aligned discordantly 1 time
    ----
    9822333 pairs aligned 0 times concordantly or discordantly; of these:
      19644666 mates make up the pairs; of these:
        17454790 (88.85%) aligned 0 times
        1499746 (7.63%) aligned exactly 1 time
        690130 (3.51%) aligned >1 times
58.12% overall alignment rate
[bam_sort_core] merging from 10 files...

### SHHI-4_0

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    10550464 (45.65%) aligned concordantly 0 times
    10928873 (47.29%) aligned concordantly exactly 1 time
    1630286 (7.05%) aligned concordantly >1 times
    ----
    10550464 pairs aligned concordantly 0 times; of these:
      300344 (2.85%) aligned discordantly 1 time
    ----
    10250120 pairs aligned 0 times concordantly or discordantly; of these:
      20500240 mates make up the pairs; of these:
        18024343 (87.92%) aligned 0 times
        1717009 (8.38%) aligned exactly 1 time
        758888 (3.70%) aligned >1 times
61.00% overall alignment rate
[bam_sort_core] merging from 12 files...

### SHHI-4_3

22831746 reads; of these:
  22831746 (100.00%) were paired; of these:
    10542464 (46.17%) aligned concordantly 0 times
    10751190 (47.09%) aligned concordantly exactly 1 time
    1538092 (6.74%) aligned concordantly >1 times
    ----
    10542464 pairs aligned concordantly 0 times; of these:
      316804 (3.01%) aligned discordantly 1 time
    ----
    10225660 pairs aligned 0 times concordantly or discordantly; of these:
      20451320 mates make up the pairs; of these:
        17857674 (87.32%) aligned 0 times
        1769730 (8.65%) aligned exactly 1 time
        823916 (4.03%) aligned >1 times
60.89% overall alignment rate
[bam_sort_core] merging from 12 files..

### SHHI-4_30

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    11595783 (47.35%) aligned concordantly 0 times
    11184408 (45.67%) aligned concordantly exactly 1 time
    1707972 (6.97%) aligned concordantly >1 times
    ----
    11595783 pairs aligned concordantly 0 times; of these:
      299852 (2.59%) aligned discordantly 1 time
    ----
    11295931 pairs aligned 0 times concordantly or discordantly; of these:
      22591862 mates make up the pairs; of these:
        19909220 (88.13%) aligned 0 times
        1821790 (8.06%) aligned exactly 1 time
        860852 (3.81%) aligned >1 times
59.35% overall alignment rate
[bam_sort_core] merging from 12 files...

### PAER-2_3

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    5896714 (27.72%) aligned concordantly 0 times
    13309318 (62.56%) aligned concordantly exactly 1 time
    2068559 (9.72%) aligned concordantly >1 times
    ----
    5896714 pairs aligned concordantly 0 times; of these:
      389704 (6.61%) aligned discordantly 1 time
    ----
    5507010 pairs aligned 0 times concordantly or discordantly; of these:
      11014020 mates make up the pairs; of these:
        8379727 (76.08%) aligned 0 times
        1753250 (15.92%) aligned exactly 1 time
        881043 (8.00%) aligned >1 times
80.31% overall alignment rate
[bam_sort_core] merging from 14 files...
