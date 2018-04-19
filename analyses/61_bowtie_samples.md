## FOR MMETSP0360 (SHTV-5, 30 PSU) against all:

```
samples="SHTV-5_0 SHTV-5_3 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x MMETSP0361.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 59_bowtie2_$sample.bam; done

```
### SHTV-5_0 

27365859 reads; of these:
  27365859 (100.00%) were paired; of these:
    3129785 (11.44%) aligned concordantly 0 times
    18891238 (69.03%) aligned concordantly exactly 1 time
    5344836 (19.53%) aligned concordantly >1 times
    ----
    3129785 pairs aligned concordantly 0 times; of these:
      455632 (14.56%) aligned discordantly 1 time
    ----
    2674153 pairs aligned 0 times concordantly or discordantly; of these:
      5348306 mates make up the pairs; of these:
        3762974 (70.36%) aligned 0 times
        1088141 (20.35%) aligned exactly 1 time
        497191 (9.30%) aligned >1 times
93.12% overall alignment rate

### SHTV-5_3 

16785889 reads; of these:
  16785889 (100.00%) were paired; of these:
    1703387 (10.15%) aligned concordantly 0 times
    11771780 (70.13%) aligned concordantly exactly 1 time
    3310722 (19.72%) aligned concordantly >1 times
    ----
    1703387 pairs aligned concordantly 0 times; of these:
      168781 (9.91%) aligned discordantly 1 time
    ----
    1534606 pairs aligned 0 times concordantly or discordantly; of these:
      3069212 mates make up the pairs; of these:
        2321593 (75.64%) aligned 0 times
        545738 (17.78%) aligned exactly 1 time
        201881 (6.58%) aligned >1 times
93.08% overall alignment rate

### SHHI-4_0 

23109623 reads; of these:
  23109623 (100.00%) were paired; of these:
    4193267 (18.15%) aligned concordantly 0 times
    14996737 (64.89%) aligned concordantly exactly 1 time
    3919619 (16.96%) aligned concordantly >1 times
    ----
    4193267 pairs aligned concordantly 0 times; of these:
      231265 (5.52%) aligned discordantly 1 time
    ----
    3962002 pairs aligned 0 times concordantly or discordantly; of these:
      7924004 mates make up the pairs; of these:
        6579610 (83.03%) aligned 0 times
        1014978 (12.81%) aligned exactly 1 time
        329416 (4.16%) aligned >1 times
85.76% overall alignment rate

### SHHI-4_3 

### SHHI-4_30

### PAER-2_0 

### PAER-2_3


---------------------------------------------

## Indexing bam file using samtools

```
ls *.bam | parallel samtools index '{}'
```
