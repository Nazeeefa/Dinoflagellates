### 2. Running Trimmomatic (for 59 and 60)

The following was not required:

```
java -jar ~/bin/Trimmomatic-0.36/trimmomatic-0.36.jar PE SHTV-5_30_1.fastq.gz SHTV-5_30_2.fastq.gz SHTV-5_30_1P.fastq.gz SHTV-5_30_1U.fastq.gz SHTV-5_30_2P.fastq.gz SHTV-5_30_2U.fastq.gz HEADCROP:50 CROP:101
```

Therefore, trimmomatic analyses for samples 59 and 60 (respectively) were performed again with only CROP flag
```
java -jar ~/bin/Trimmomatic-0.36/trimmomatic-0.36.jar PE SHTV-5_0_1.fastq.gz SHTV-5_0_2.fastq.gz SHTV-5_0_1P.fastq.gz SHTV-5_0_1U.fastq.gz SHTV-5_0_2P.fastq.gz SHTV-5_0_2U.fastq.gz CROP:50
```
```
java -jar ~/bin/Trimmomatic-0.36/trimmomatic-0.36.jar PE SHTV-5_30_1.fastq.gz SHTV-5_30_2.fastq.gz SHTV-5_30_1P.fastq.gz SHTV-5_30_1U.fastq.gz SHTV-5_30_2P.fastq.gz SHTV-5_30_2U.fastq.gz CROP:50
```
* 4 Output files:
  * paired forward (1P)
  * unpaired forward (1U)
  * paired reverse (2P)
  * unpaired reverse (2U)

### Run-Process Output: Trimmomatic
```
TrimmomaticPE: Started with arguments:
SHTV-5_30_1.fastq.gz SHTV-5_30_2.fastq.gz SHTV-5_30_1P.fastq.gz SHTV-5_30_1U.fastq.gz SHTV-5_30_2P.fastq.gz SHTV-5_30_2U.fastq.gz HEADCROP:50 CROP:101
Multiple cores found: Using 4 threads
Quality encoding detected as phred33
Input Read Pairs: 20841201 Both Surviving: 20841201 (100.00%) Forward Only Surviving: 0 (0.00%) Reverse Only Surviving: 0 (0.00%) Dropped: 0 (0.00%)
TrimmomaticPE: Completed successfully
```
