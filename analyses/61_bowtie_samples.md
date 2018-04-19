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

### SHHI-4_0 

### SHHI-4_3 

### SHHI-4_30

### PAER-2_0 

### PAER-2_3


---------------------------------------------

## Indexing bam file using samtools

```
ls *.bam | parallel samtools index '{}'
```
