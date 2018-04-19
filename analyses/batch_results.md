```
samples="SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 59_bowtie2_$sample.bam; done
```
# Reults from batch run of bowtie; aligning reads back to assembly

running in dir: bowtie_59_0 and then move to 59_bowtie_samples 

## FOR MMETSP0359 (SHTV-5, 0 PSU) against all:
Order: samples="SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"

### SHTV-5_3 
(File in editing mode displays following as it appeare on terminal)

16785889 reads; of these:
16785889 (100.00%) were paired; of these:
    1438278 (8.57%) aligned concordantly 0 times
    11956063 (71.23%) aligned concordantly exactly 1 time
    3391548 (20.20%) aligned concordantly >1 times
    ----
    1438278 pairs aligned concordantly 0 times; of these:
      160684 (11.17%) aligned discordantly 1 time
    ----
    1277594 pairs aligned 0 times concordantly or discordantly; of these:
      2555188 mates make up the pairs; of these:
        1913282 (74.88%) aligned 0 times
        446829 (17.49%) aligned exactly 1 time
        195077 (7.63%) aligned >1 times
94.30% overall alignment rate
[bam_sort_core] merging from 13 files...

### SHTV-5_30 

20841201 reads; of these:
  20841201 (100.00%) were paired; of these:
    2295857 (11.02%) aligned concordantly 0 times
    14446860 (69.32%) aligned concordantly exactly 1 time
    4098484 (19.67%) aligned concordantly >1 times
    ----
    2295857 pairs aligned concordantly 0 times; of these:
      263919 (11.50%) aligned discordantly 1 time
    ----
    2031938 pairs aligned 0 times concordantly or discordantly; of these:
      4063876 mates make up the pairs; of these:
        3063182 (75.38%) aligned 0 times
        690499 (16.99%) aligned exactly 1 time
        310195 (7.63%) aligned >1 times
92.65% overall alignment rate
[bam_sort_core] merging from 16 files...

### SHHI-4_0 

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    3998543 (17.30%) aligned concordantly 0 times
    15150537 (65.56%) aligned concordantly exactly 1 time
    3960543 (17.14%) aligned concordantly >1 times
    ----
    3998543 pairs aligned concordantly 0 times; of these:
      222985 (5.58%) aligned discordantly 1 time
    ----
    3775558 pairs aligned 0 times concordantly or discordantly; of these:
      7551116 mates make up the pairs; of these:
        6281880 (83.19%) aligned 0 times
        932421 (12.35%) aligned exactly 1 time
        336815 (4.46%) aligned >1 times
86.41% overall alignment rate
[bam_sort_core] merging from 17 files...

### SHHI-4_3 

22831746 reads; of these:
  22831746 (100.00%) were paired; of these:
    4101543 (17.96%) aligned concordantly 0 times
    14882585 (65.18%) aligned concordantly exactly 1 time
    3847618 (16.85%) aligned concordantly >1 times
    ----
    4101543 pairs aligned concordantly 0 times; of these:
      238194 (5.81%) aligned discordantly 1 time
    ----
    3863349 pairs aligned 0 times concordantly or discordantly; of these:
      7726698 mates make up the pairs; of these:
        6402287 (82.86%) aligned 0 times
        969449 (12.55%) aligned exactly 1 time
        354962 (4.59%) aligned >1 times
85.98% overall alignment rate

### SHHI-4_30 

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    5031629 (20.55%) aligned concordantly 0 times
    15255274 (62.30%) aligned concordantly exactly 1 time
    4201260 (17.16%) aligned concordantly >1 times
    ----
    5031629 pairs aligned concordantly 0 times; of these:
      220113 (4.37%) aligned discordantly 1 time
    ----
    4811516 pairs aligned 0 times concordantly or discordantly; of these:
      9623032 mates make up the pairs; of these:
        8152321 (84.72%) aligned 0 times
        1080391 (11.23%) aligned exactly 1 time
        390320 (4.06%) aligned >1 times
83.35% overall alignment rate

### PAER-2_0 

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    5911763 (28.67%) aligned concordantly 0 times
    11529808 (55.91%) aligned concordantly exactly 1 time
    3180559 (15.42%) aligned concordantly >1 times
    ----
    5911763 pairs aligned concordantly 0 times; of these:
      136719 (2.31%) aligned discordantly 1 time
    ----
    5775044 pairs aligned 0 times concordantly or discordantly; of these:
      11550088 mates make up the pairs; of these:
        10182616 (88.16%) aligned 0 times
        1003087 (8.68%) aligned exactly 1 time
        364385 (3.15%) aligned >1 times
75.31% overall alignment rate

### PAER-2_3

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    6299656 (29.61%) aligned concordantly 0 times
    11615461 (54.60%) aligned concordantly exactly 1 time
    3359474 (15.79%) aligned concordantly >1 times
    ----
    6299656 pairs aligned concordantly 0 times; of these:
      128429 (2.04%) aligned discordantly 1 time
    ----
    6171227 pairs aligned 0 times concordantly or discordantly; of these:
      12342454 mates make up the pairs; of these:
        10915149 (88.44%) aligned 0 times
        1044328 (8.46%) aligned exactly 1 time
        382977 (3.10%) aligned >1 times
74.35% overall alignment rate

-----------------------------------------------------------------------------------

## FOR MMETSP0360 (SHTV-5, 3 PSU) against all:
Order: samples="SHTV-5_0 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"

### SHTV-5_0 

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    8540339 (31.21%) aligned concordantly 0 times
    16305691 (59.58%) aligned concordantly exactly 1 time
    2519829 (9.21%) aligned concordantly >1 times
    ----
    8540339 pairs aligned concordantly 0 times; of these:
      776133 (9.09%) aligned discordantly 1 time
    ----
    7764206 pairs aligned 0 times concordantly or discordantly; of these:
      15528412 mates make up the pairs; of these:
        11313856 (72.86%) aligned 0 times
        2836357 (18.27%) aligned exactly 1 time
        1378199 (8.88%) aligned >1 times
79.33% overall alignment rate

## SHTV-5_30

20841201 reads; of these:
  20841201 (100.00%) were paired; of these:
    7126907 (34.20%) aligned concordantly 0 times
    11894389 (57.07%) aligned concordantly exactly 1 time
    1819905 (8.73%) aligned concordantly >1 times
    ----
    7126907 pairs aligned concordantly 0 times; of these:
      530930 (7.45%) aligned discordantly 1 time
    ----
    6595977 pairs aligned 0 times concordantly or discordantly; of these:
      13191954 mates make up the pairs; of these:
        10092598 (76.51%) aligned 0 times
        2137835 (16.21%) aligned exactly 1 time
        961521 (7.29%) aligned >1 times
75.79% overall alignment rate

## SHHI-4_0

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    8985833 (38.88%) aligned concordantly 0 times
    12276108 (53.12%) aligned concordantly exactly 1 time
    1847682 (8.00%) aligned concordantly >1 times
    ----
    8985833 pairs aligned concordantly 0 times; of these:
      451638 (5.03%) aligned discordantly 1 time
    ----
    8534195 pairs aligned 0 times concordantly or discordantly; of these:
      17068390 mates make up the pairs; of these:
        13949314 (81.73%) aligned 0 times
        2188962 (12.82%) aligned exactly 1 time
        930114 (5.45%) aligned >1 times
69.82% overall alignment rate

## SHHI-4_3

22831746 reads; of these:
  22831746 (100.00%) were paired; of these:
    9146981 (40.06%) aligned concordantly 0 times
    11951732 (52.35%) aligned concordantly exactly 1 time
    1733033 (7.59%) aligned concordantly >1 times
    ----
    9146981 pairs aligned concordantly 0 times; of these:
      475912 (5.20%) aligned discordantly 1 time
    ----
    8671069 pairs aligned 0 times concordantly or discordantly; of these:
      17342138 mates make up the pairs; of these:
        14053736 (81.04%) aligned 0 times
        2284073 (13.17%) aligned exactly 1 time
        1004329 (5.79%) aligned >1 times
69.22% overall alignment rate

## SHHI-4_30

24488163 reads; of these:
  24488163 (100.00%) were paired; of these:
    10358119 (42.30%) aligned concordantly 0 times
    12230371 (49.94%) aligned concordantly exactly 1 time
    1899673 (7.76%) aligned concordantly >1 times
    ----
    10358119 pairs aligned concordantly 0 times; of these:
      445721 (4.30%) aligned discordantly 1 time
    ----
    9912398 pairs aligned 0 times concordantly or discordantly; of these:
      19824796 mates make up the pairs; of these:
        16443142 (82.94%) aligned 0 times
        2360532 (11.91%) aligned exactly 1 time
        1021122 (5.15%) aligned >1 times
66.43% overall alignment rate

## PAER-2_0

20622130 reads; of these:
  20622130 (100.00%) were paired; of these:
    9604955 (46.58%) aligned concordantly 0 times
    9589830 (46.50%) aligned concordantly exactly 1 time
    1427345 (6.92%) aligned concordantly >1 times
    ----
    9604955 pairs aligned concordantly 0 times; of these:
      299184 (3.11%) aligned discordantly 1 time
    ----
    9305771 pairs aligned 0 times concordantly or discordantly; of these:
      18611542 mates make up the pairs; of these:
        15948192 (85.69%) aligned 0 times
        1847625 (9.93%) aligned exactly 1 time
        815725 (4.38%) aligned >1 times
61.33% overall alignment rate

## PAER-2_3
