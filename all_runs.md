** Linking files **

#### 59 (0 PSU)
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296786_1.fastq.gz SHTV-5_0_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296786_2.fastq.gz SHTV-5_0_2.fastq.gz
```
#### 60 (3 PSU) -----
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296972_1.fastq.gz SHTV-5_3_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296972_2.fastq.gz SHTV-5_3_2.fastq.gz
```
#### 61 (30 PSU) -----
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294400_1.fastq.gz SHTV-5_30_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294400_2.fastq.gz SHTV-5_30_2.fastq.gz
```
#### 67 (0 PSU) -----
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296793_1.fastq.gz SHHI-4_0_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296793_2.fastq.gz SHHI-4_0_2.fastq.gz
```
#### 68 (3 PSU) ---
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296794_1.fastq.gz SHHI-4_3_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296794_2.fastq.gz SHHI-4_3_2.fastq.gz

#### 69 (30 PSU) ---
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296796_1.fastq.gz SHHI-4_30_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1296796_2.fastq.gz SHHI-4_30_2.fastq.gz

#### 70 (0 PSU) -----
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294439_1.fastq.gz PAER-2_0_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294439_2.fastq.gz PAER-2_0_2.fastq.gz
```
#### 71 (3 PSU) ----
```
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294440_1.fastq.gz PAER-2_3_1.fastq.gz
ln -s /home/nazeefa/dinoflagellates/MMETSP03/Data/fastq/SRR1294440_2.fastq.gz PAER-2_3_2.fastq.gz
```
------------------------------------------------------------------------------------------------------------------

** Bowtie runs **

####  59 (0 PSU) //
```
bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_59.bam
```
####  60 (3 PSU) //
```
bowtie2-build MMETSP0360.nt.fa MMETSP0360.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0360.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_60.bam
```
#### 61 (30 PSU) //
```
bowtie2-build MMETSP0361.nt.fa MMETSP0361.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0361.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_30_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_30_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_61.bam
```
####  67 (0 PSU) //
```
bowtie2-build MMETSP0367.nt.fa MMETSP0367.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0367.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_0_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_0_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_67.bam
```
#### 68 (3 PSU) //
```
bowtie2-build MMETSP0368.nt.fa MMETSP0368.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0368.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_3_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_3_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_68.bam
```
#### 69 (30 PSU) //
```
bowtie2-build MMETSP0369.nt.fa MMETSP0369.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0369.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_30_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHHI-4_30_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_69.bam
```
#### 70 (0 PSU) //
```
bowtie2-build MMETSP0370.nt.fa MMETSP0370.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0370.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/PAER-2_0_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/PAER-2_0_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_70.bam
```
#### 71 (3 PSU) //
```
bowtie2-build MMETSP0371.nt.fa MMETSP0371.nt.fa
```
```
bowtie2 --local --no-unal -x MMETSP0371.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/PAER-2_3_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/PAER-2_3_2.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2_71.bam
```
## Bowtie2 - aligning reads for each sample to the assembly of each sample:

### 59 (0 PSU) vs 60 (3 PSU)
```
bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > 59_bowtie2_60.bam
```
