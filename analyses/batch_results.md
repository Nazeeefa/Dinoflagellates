```
samples="SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 59_bowtie2_$sample.bam; done
```
## Reults from batch run of bowtie; aligning reads back to assembly

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

### SHHI-4_3 

### SHHI-4_30 

### PAER-2_0 

### PAER-2_3
