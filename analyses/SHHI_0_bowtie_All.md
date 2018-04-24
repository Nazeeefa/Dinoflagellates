## FOR MMETSP0367 (SHHI-4, 0 PSU) against all:
```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x ../MMETSP0367.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 67_bowtie2_$sample.bam | echo "processed"; done
```

### SHTV-5_0

27365859 reads; of these:                                                                                                      
  27365859 (100.00%) were paired; of these:                                                                                                                        
    9225697 (33.71%) aligned concordantly 0 times                                                                                                                  
    10991170 (40.16%) aligned concordantly exactly 1 time                                                                                                          
    7148992 (26.12%) aligned concordantly >1 times                                                                                                                 
    ----                                                                                                                                                           
    9225697 pairs aligned concordantly 0 times; of these:                                                                                                          
      329393 (3.57%) aligned discordantly 1 time
    ----
    8896304 pairs aligned 0 times concordantly or discordantly; of these:
      17792608 mates make up the pairs; of these:
        14112778 (79.32%) aligned 0 times
        1913484 (10.75%) aligned exactly 1 time
        1766346 (9.93%) aligned >1 times
74.21% overall alignment rate
[bam_sort_core] merging from 17 files...
processed

### SHTV-5_3

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    5644652 (33.63%) aligned concordantly 0 times
    6661774 (39.69%) aligned concordantly exactly 1 time
    4479463 (26.69%) aligned concordantly >1 times
    ----
    5644652 pairs aligned concordantly 0 times; of these:
      152361 (2.70%) aligned discordantly 1 time
    ----
    5492291 pairs aligned 0 times concordantly or discordantly; of these:
      10984582 mates make up the pairs; of these:
        9111992 (82.95%) aligned 0 times
        1017006 (9.26%) aligned exactly 1 time
        855584 (7.79%) aligned >1 times
72.86% overall alignment rate
[bam_sort_core] merging from 10 files...

### SHTV-5_30

20841201 reads; of these:
  20841201 (100.00%) were paired; of these:
    7397865 (35.50%) aligned concordantly 0 times
    8129264 (39.01%) aligned concordantly exactly 1 time
    5314072 (25.50%) aligned concordantly >1 times
    ----
    7397865 pairs aligned concordantly 0 times; of these:
      230323 (3.11%) aligned discordantly 1 time
    ----
    7167542 pairs aligned 0 times concordantly or discordantly; of these:
      14335084 mates make up the pairs; of these:
        11706991 (81.67%) aligned 0 times
        1378298 (9.61%) aligned exactly 1 time
        1249795 (8.72%) aligned >1 times
71.91% overall alignment rate
[bam_sort_core] merging from 13 files...

### SHHI-4_3

22831746 reads; of these:
  22831746 (100.00%) were paired; of these:
    5586896 (24.47%) aligned concordantly 0 times
    10577771 (46.33%) aligned concordantly exactly 1 time
    6667079 (29.20%) aligned concordantly >1 times
    ----
    5586896 pairs aligned concordantly 0 times; of these:
      298727 (5.35%) aligned discordantly 1 time
    ----
    5288169 pairs aligned 0 times concordantly or discordantly; of these:
      10576338 mates make up the pairs; of these:
        7361985 (69.61%) aligned 0 times
        1699865 (16.07%) aligned exactly 1 time
        1514488 (14.32%) aligned >1 times
83.88% overall alignment rate
[bam_sort_core] merging from 16 files...

### SSHHI-4_30

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    6391649 (26.10%) aligned concordantly 0 times
    10977610 (44.83%) aligned concordantly exactly 1 time
    7118904 (29.07%) aligned concordantly >1 times
    ----
    6391649 pairs aligned concordantly 0 times; of these:
      295884 (4.63%) aligned discordantly 1 time
    ----
    6095765 pairs aligned 0 times concordantly or discordantly; of these:
      12191530 mates make up the pairs; of these:
        8796799 (72.16%) aligned 0 times
        1808903 (14.84%) aligned exactly 1 time
        1585828 (13.01%) aligned >1 times
82.04% overall alignment rate
[bam_sort_core] merging from 17 files...

### PAER-2_0

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    8609883 (41.75%) aligned concordantly 0 times
    7305236 (35.42%) aligned concordantly exactly 1 time
    4707011 (22.83%) aligned concordantly >1 times
    ----
    8609883 pairs aligned concordantly 0 times; of these:
      165690 (1.92%) aligned discordantly 1 time
    ----
    8444193 pairs aligned 0 times concordantly or discordantly; of these:
      16888386 mates make up the pairs; of these:
        14385290 (85.18%) aligned 0 times
        1338087 (7.92%) aligned exactly 1 time
        1165009 (6.90%) aligned >1 times
65.12% overall alignment rate
[bam_sort_core] merging from 11 files...

### PAER-2_3

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    9025819 (42.43%) aligned concordantly 0 times
    7571319 (35.59%) aligned concordantly exactly 1 time
    4677453 (21.99%) aligned concordantly >1 times
    ----
    9025819 pairs aligned concordantly 0 times; of these:
      166107 (1.84%) aligned discordantly 1 time
    ----
    8859712 pairs aligned 0 times concordantly or discordantly; of these:
      17719424 mates make up the pairs; of these:
        15168889 (85.61%) aligned 0 times
        1368899 (7.73%) aligned exactly 1 time
        1181636 (6.67%) aligned >1 times
64.35% overall alignment rate
[bam_sort_core] merging from 12 files...
