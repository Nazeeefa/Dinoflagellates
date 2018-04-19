## FOR MMETSP0360 (SHTV-5, 30 PSU) against all:

```
samples="SHTV-5_0 SHTV-5_3 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do bowtie2 --local --no-unal -x MMETSP0361.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > 59_bowtie2_$sample.bam; done

```

### SHTV-5_0 

### SHTV-5_3 

### SHHI-4_0 

### SHHI-4_3 

### SHHI-4_30

### PAER-2_0 

### PAER-2_3
