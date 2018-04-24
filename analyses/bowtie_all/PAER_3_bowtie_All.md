## FOR MMETSP0371 (PAER-2, 3 PSU) against all:
```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x ../MMETSP0371.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 71_bowtie2_$sample.bam | echo "processed"; done
```

### SHTV-5_0

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    12985725 (47.45%) aligned concordantly 0 times
    12459522 (45.53%) aligned concordantly exactly 1 time
    1920612 (7.02%) aligned concordantly >1 times
    ----
    12985725 pairs aligned concordantly 0 times; of these:
      425939 (3.28%) aligned discordantly 1 time
    ----
    12559786 pairs aligned 0 times concordantly or discordantly; of these:
      25119572 mates make up the pairs; of these:
        22065725 (87.84%) aligned 0 times
        2071704 (8.25%) aligned exactly 1 time
        982143 (3.91%) aligned >1 times
59.68% overall alignment rate
[bam_sort_core] merging from 14 files...

### SHTV-5_3

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    8164800 (48.64%) aligned concordantly 0 times
    7484272 (44.59%) aligned concordantly exactly 1 time
    1136817 (6.77%) aligned concordantly >1 times
    ----                                                                                                                                                           
    8164800 pairs aligned concordantly 0 times; of these:                                                                                                          
      200687 (2.46%) aligned discordantly 1 time                                                                                                                   
    ----                                                                                                                                                           
    7964113 pairs aligned 0 times concordantly or discordantly; of these:                                                                                          
      15928226 mates make up the pairs; of these:                                                                                                                  
        14332839 (89.98%) aligned 0 times                                                                                                                          
        1114317 (7.00%) aligned exactly 1 time                                                                                                                     
        481070 (3.02%) aligned >1 times                                                                                                                            
57.31% overall alignment rate                                                                                                                                      
[bam_sort_core] merging from 8 files... 

### SHTV-5_30

20841201 reads; of these:                                                                                                                                          
  20841201 (100.00%) were paired; of these:                                                                                                                        
    10251541 (49.19%) aligned concordantly 0 times                                                                                                                 
    9184339 (44.07%) aligned concordantly exactly 1 time                                                                                                           
    1405321 (6.74%) aligned concordantly >1 times                                                                                                                  
    ----                                                                                                                                                           
    10251541 pairs aligned concordantly 0 times; of these:                                                                                                         
      288797 (2.82%) aligned discordantly 1 time
    ----
    9962744 pairs aligned 0 times concordantly or discordantly; of these:
      19925488 mates make up the pairs; of these:
        17718305 (88.92%) aligned 0 times
        1492652 (7.49%) aligned exactly 1 time
        714531 (3.59%) aligned >1 times
57.49% overall alignment rate
[bam_sort_core] merging from 10 files...

### SHHI-4_0

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    10685518 (46.24%) aligned concordantly 0 times
    10785681 (46.67%) aligned concordantly exactly 1 time
    1638424 (7.09%) aligned concordantly >1 times
    ----
    10685518 pairs aligned concordantly 0 times; of these:
      299202 (2.80%) aligned discordantly 1 time
    ----
    10386316 pairs aligned 0 times concordantly or discordantly; of these:
      20772632 mates make up the pairs; of these:
        18309577 (88.14%) aligned 0 times
        1699240 (8.18%) aligned exactly 1 time
        763815 (3.68%) aligned >1 times
60.39% overall alignment rate
[bam_sort_core] merging from 12 files...

### SHHI-4_3

22831746 reads; of these:
  22831746 (100.00%) were paired; of these:
    10655907 (46.67%) aligned concordantly 0 times
    10626881 (46.54%) aligned concordantly exactly 1 time
    1548958 (6.78%) aligned concordantly >1 times
    ----
    10655907 pairs aligned concordantly 0 times; of these:
      315076 (2.96%) aligned discordantly 1 time
    ----
    10340831 pairs aligned 0 times concordantly or discordantly; of these:
      20681662 mates make up the pairs; of these:
        18095847 (87.50%) aligned 0 times
        1754968 (8.49%) aligned exactly 1 time
        830847 (4.02%) aligned >1 times
60.37% overall alignment rate
[bam_sort_core] merging from 12 files...

### SHHI-4_30

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    11610291 (47.41%) aligned concordantly 0 times
    11146657 (45.52%) aligned concordantly exactly 1 time
    1731215 (7.07%) aligned concordantly >1 times
    ----
    11610291 pairs aligned concordantly 0 times; of these:
      297604 (2.56%) aligned discordantly 1 time
    ----
    11312687 pairs aligned 0 times concordantly or discordantly; of these:
      22625374 mates make up the pairs; of these:
        19944631 (88.15%) aligned 0 times
        1803802 (7.97%) aligned exactly 1 time
        876941 (3.88%) aligned >1 times
59.28% overall alignment rate
[bam_sort_core] merging from 12 files...

### PAER-2_0

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    5796117 (28.11%) aligned concordantly 0 times
    12911482 (62.61%) aligned concordantly exactly 1 time
    1914531 (9.28%) aligned concordantly >1 times
    ----
    5796117 pairs aligned concordantly 0 times; of these:
      408644 (7.05%) aligned discordantly 1 time
    ----
    5387473 pairs aligned 0 times concordantly or discordantly; of these:
      10774946 mates make up the pairs; of these:
        8174939 (75.87%) aligned 0 times
        1716603 (15.93%) aligned exactly 1 time
        883404 (8.20%) aligned >1 times
80.18% overall alignment rate
[bam_sort_core] merging from 14 files...
