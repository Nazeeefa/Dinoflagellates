## FOR MMETSP0368 (SHHI-4, 3 PSU) against all:
```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_30 PAER-2_0 PAER-2_3
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x ../MMETSP0368.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 68_bowtie2_$sample.bam | echo "processed"; done
```

### SHTV-5_0

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    9348554 (34.16%) aligned concordantly 0 times
    10787823 (39.42%) aligned concordantly exactly 1 time
    7229482 (26.42%) aligned concordantly >1 times
    ----
    9348554 pairs aligned concordantly 0 times; of these:
      315383 (3.37%) aligned discordantly 1 time
    ----
    9033171 pairs aligned 0 times concordantly or discordantly; of these:
      18066342 mates make up the pairs; of these:
        14450381 (79.99%) aligned 0 times
        1854844 (10.27%) aligned exactly 1 time
        1761117 (9.75%) aligned >1 times
73.60% overall alignment rate
[bam_sort_core] merging from 17 files...

### SHTV-5_3

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    5756343 (34.29%) aligned concordantly 0 times
    6526579 (38.88%) aligned concordantly exactly 1 time
    4502967 (26.83%) aligned concordantly >1 times
    ----                                                                                                                                                           
    5756343 pairs aligned concordantly 0 times; of these:                                                                                                          
      145133 (2.52%) aligned discordantly 1 time                                                                                                                   
    ----                                                                                                                                                           
    5611210 pairs aligned 0 times concordantly or discordantly; of these:                                                                                          
      11222420 mates make up the pairs; of these:                                                                                                                  
        9379348 (83.58%) aligned 0 times                                                                                                                           
        987101 (8.80%) aligned exactly 1 time                                                                                                                      
        855971 (7.63%) aligned >1 times                                                                                                                            
72.06% overall alignment rate                                                                                                                                      
[bam_sort_core] merging from 10 files...

### SHTV-5_30

20841201 reads; of these:                                                                                                                                          
  20841201 (100.00%) were paired; of these:                                                                                                                        
    7446418 (35.73%) aligned concordantly 0 times                                                                                                                  
    7992811 (38.35%) aligned concordantly exactly 1 time                                                                                                           
    5401972 (25.92%) aligned concordantly >1 times                                                                                                                 
    ----                                                                                                                                                           
    7446418 pairs aligned concordantly 0 times; of these:                                                                                                          
      221783 (2.98%) aligned discordantly 1 time
    ----
    7224635 pairs aligned 0 times concordantly or discordantly; of these:
      14449270 mates make up the pairs; of these:
        11878420 (82.21%) aligned 0 times
        1325630 (9.17%) aligned exactly 1 time
        1245220 (8.62%) aligned >1 times
71.50% overall alignment rate
[bam_sort_core] merging from 13 files...

### SHHI-4_0

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    5505944 (23.83%) aligned concordantly 0 times
    10561592 (45.70%) aligned concordantly exactly 1 time
    7042087 (30.47%) aligned concordantly >1 times
    ----
    5505944 pairs aligned concordantly 0 times; of these:
      274390 (4.98%) aligned discordantly 1 time
    ----
    5231554 pairs aligned 0 times concordantly or discordantly; of these:
      10463108 mates make up the pairs; of these:
        7464441 (71.34%) aligned 0 times
        1582313 (15.12%) aligned exactly 1 time
        1416354 (13.54%) aligned >1 times
83.85% overall alignment rate
[bam_sort_core] merging from 16 files...

### SHHI-4_30

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    6342967 (25.90%) aligned concordantly 0 times
    10877816 (44.42%) aligned concordantly exactly 1 time
    7267380 (29.68%) aligned concordantly >1 times
    ----
    6342967 pairs aligned concordantly 0 times; of these:
      282931 (4.46%) aligned discordantly 1 time
    ----
    6060036 pairs aligned 0 times concordantly or discordantly; of these:
      12120072 mates make up the pairs; of these:
        8793170 (72.55%) aligned 0 times
        1739486 (14.35%) aligned exactly 1 time
        1587416 (13.10%) aligned >1 times
82.05% overall alignment rate
[bam_sort_core] merging from 17 files...

### PAER-2_0

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    8610775 (41.76%) aligned concordantly 0 times
    7217882 (35.00%) aligned concordantly exactly 1 time
    4793473 (23.24%) aligned concordantly >1 times
    ----
    8610775 pairs aligned concordantly 0 times; of these:
      159145 (1.85%) aligned discordantly 1 time
    ----
    8451630 pairs aligned 0 times concordantly or discordantly; of these:
      16903260 mates make up the pairs; of these:
        14441600 (85.44%) aligned 0 times
        1290684 (7.64%) aligned exactly 1 time
        1170976 (6.93%) aligned >1 times
64.99% overall alignment rate
[bam_sort_core] merging from 11 files...

### PAER-2_3

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    9015471 (42.38%) aligned concordantly 0 times
    7482783 (35.17%) aligned concordantly exactly 1 time
    4776337 (22.45%) aligned concordantly >1 times
    ----
    9015471 pairs aligned concordantly 0 times; of these:
      158916 (1.76%) aligned discordantly 1 time
    ----
    8856555 pairs aligned 0 times concordantly or discordantly; of these:
      17713110 mates make up the pairs; of these:
        15194217 (85.78%) aligned 0 times
        1322237 (7.46%) aligned exactly 1 time
        1196656 (6.76%) aligned >1 times
64.29% overall alignment rate
[bam_sort_core] merging from 12 files...
