## FOR MMETSP0360 (SHTV-5, 3 PSU) against all:

```
samples="SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x MMETSP03560.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 60_bowtie2_$sample.bam; done
```

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

21274591 reads; of these:
  21274591 (100.00%) were paired; of these:
    10123305 (47.58%) aligned concordantly 0 times
    9597689 (45.11%) aligned concordantly exactly 1 time
    1553597 (7.30%) aligned concordantly >1 times
    ----
    10123305 pairs aligned concordantly 0 times; of these:
      288627 (2.85%) aligned discordantly 1 time
    ----
    9834678 pairs aligned 0 times concordantly or discordantly; of these:
      19669356 mates make up the pairs; of these:
        16961349 (86.23%) aligned 0 times
        1876802 (9.54%) aligned exactly 1 time
        831205 (4.23%) aligned >1 times
60.14% overall alignment rate

