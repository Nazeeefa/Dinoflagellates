## FOR MMETSP0369 (SHHI-4, 30 PSU) against all:
```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 PAER-2_0 PAER-2_3
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x ../MMETSP0369.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 69_bowtie2_$sample.bam | echo "processed"; done
```

### SHTV-5_0

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    9593287 (35.06%) aligned concordantly 0 times
    11015516 (40.25%) aligned concordantly exactly 1 time
    6757056 (24.69%) aligned concordantly >1 times
    ----
    9593287 pairs aligned concordantly 0 times; of these:
      336561 (3.51%) aligned discordantly 1 time
    ----
    9256726 pairs aligned 0 times concordantly or discordantly; of these:
      18513452 mates make up the pairs; of these:
        14846037 (80.19%) aligned 0 times
        1923922 (10.39%) aligned exactly 1 time
        1743493 (9.42%) aligned >1 times
72.87% overall alignment rate
[bam_sort_core] merging from 17 files...

### SHTV-5_3

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    5967450 (35.55%) aligned concordantly 0 times
    6645245 (39.59%) aligned concordantly exactly 1 time
    4173194 (24.86%) aligned concordantly >1 times
    ----                                                                                                                                                           
    5967450 pairs aligned concordantly 0 times; of these:                                                                                                          
      159887 (2.68%) aligned discordantly 1 time                                                                                                                   
    ----                                                                                                                                                           
    5807563 pairs aligned 0 times concordantly or discordantly; of these:                                                                                          
      11615126 mates make up the pairs; of these:                                                                                                                  
        9749007 (83.93%) aligned 0 times                                                                                                                           
        1025970 (8.83%) aligned exactly 1 time                                                                                                                     
        840149 (7.23%) aligned >1 times                                                                                                                            
70.96% overall alignment rate                                                                                                                                      
[bam_sort_core] merging from 10 files...

### SHTV-5_30

20841201 reads; of these:                                                                                                                                          
  20841201 (100.00%) were paired; of these:                                                                                                                        
    7496034 (35.97%) aligned concordantly 0 times                                                                                                                  
    8265687 (39.66%) aligned concordantly exactly 1 time                                                                                                           
    5079480 (24.37%) aligned concordantly >1 times                                                                                                                 
    ----                                                                                                                                                           
    7496034 pairs aligned concordantly 0 times; of these:                                                                                                          
      240316 (3.21%) aligned discordantly 1 time
    ----
    7255718 pairs aligned 0 times concordantly or discordantly; of these:
      14511436 mates make up the pairs; of these:
        11874914 (81.83%) aligned 0 times
        1381902 (9.52%) aligned exactly 1 time
        1254620 (8.65%) aligned >1 times
71.51% overall alignment rate
[bam_sort_core] merging from 13 files...

### SHHI-4_0

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    5646329 (24.43%) aligned concordantly 0 times
    10921850 (47.26%) aligned concordantly exactly 1 time
    6541444 (28.31%) aligned concordantly >1 times
    ----
    5646329 pairs aligned concordantly 0 times; of these:
      301069 (5.33%) aligned discordantly 1 time
    ----
    5345260 pairs aligned 0 times concordantly or discordantly; of these:
      10690520 mates make up the pairs; of these:
        7676256 (71.80%) aligned 0 times
        1620208 (15.16%) aligned exactly 1 time
        1394056 (13.04%) aligned >1 times
83.39% overall alignment rate
[bam_sort_core] merging from 16 files...

### SHHI-4_3

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    5646329 (24.43%) aligned concordantly 0 times
    10921850 (47.26%) aligned concordantly exactly 1 time
    6541444 (28.31%) aligned concordantly >1 times
    ----
    5646329 pairs aligned concordantly 0 times; of these:
      301069 (5.33%) aligned discordantly 1 time
    ----
    5345260 pairs aligned 0 times concordantly or discordantly; of these:
      10690520 mates make up the pairs; of these:
        7676256 (71.80%) aligned 0 times
        1620208 (15.16%) aligned exactly 1 time
        1394056 (13.04%) aligned >1 times
83.39% overall alignment rate
[bam_sort_core] merging from 16 files...

### PAER-2_0

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    8639464 (41.89%) aligned concordantly 0 times
    7418585 (35.97%) aligned concordantly exactly 1 time
    4564081 (22.13%) aligned concordantly >1 times
    ----
    8639464 pairs aligned concordantly 0 times; of these:
      177935 (2.06%) aligned discordantly 1 time
    ----
    8461529 pairs aligned 0 times concordantly or discordantly; of these:
      16923058 mates make up the pairs; of these:
        14390896 (85.04%) aligned 0 times
        1344022 (7.94%) aligned exactly 1 time
        1188140 (7.02%) aligned >1 times
65.11% overall alignment rate
[bam_sort_core] merging from 11 files...

### PAER-2_3

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    8961129 (42.12%) aligned concordantly 0 times
    7732002 (36.34%) aligned concordantly exactly 1 time
    4581460 (21.53%) aligned concordantly >1 times
    ----
    8961129 pairs aligned concordantly 0 times; of these:
      180937 (2.02%) aligned discordantly 1 time
    ----
    8780192 pairs aligned 0 times concordantly or discordantly; of these:
      17560384 mates make up the pairs; of these:
        14983371 (85.32%) aligned 0 times
        1369317 (7.80%) aligned exactly 1 time
        1207696 (6.88%) aligned >1 times
64.79% overall alignment rate
[bam_sort_core] merging from 12 files...
