## List of useful + some very-easy-to-remember commands.

### Running FastQC:
```
find -name '*.fastq.gz' | xargs fastqc -o "dir/path"
Example (dir/path): "/home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastqc/fastqc_new_html"

```

### Counting sequnce characters in fastq.gz file
```
zcat *.fastq.gz | paste - - - - | cut -f 2 | head -1 | wc -c
```

### Running Trimmomatic (for 59 and 60)
```
java -jar ~/bin/Trimmomatic-0.36/trimmomatic-0.36.jar PE SHTV-5_30_1.fastq.gz SHTV-5_30_2.fastq.gz SHTV-5_30_1P.fastq.gz SHTV-5_30_1U.fastq.gz SHTV-5_30_2P.fastq.gz SHTV-5_30_2U.fastq.gz HEADCROP:50 CROP:101
```

### Run-Process Output: Trimmomatic
```
TrimmomaticPE: Started with arguments:
SHTV-5_30_1.fastq.gz SHTV-5_30_2.fastq.gz SHTV-5_30_1P.fastq.gz SHTV-5_30_1U.fastq.gz SHTV-5_30_2P.fastq.gz SHTV-5_30_2U.fastq.gz HEADCROP:50 CROP:101
Multiple cores found: Using 4 threads
Quality encoding detected as phred33
Input Read Pairs: 20841201 Both Surviving: 20841201 (100.00%) Forward Only Surviving: 0 (0.00%) Reverse Only Surviving: 0 (0.00%) Dropped: 0 (0.00%)
TrimmomaticPE: Completed successfully

```
### Running MultiQC
```
multiqc ./ ./multiQC/
```
```
Running data in:
/home/nazeefa/dinoflagellates/MMETSP03/Analysis

Output goes to: /home/nazeefa/dinoflagellates/MMETSP03/Analysis/multiQC
```
```
Open multiQC report: firefox multiqc_report.html
```
### Copying Symbolic link (files in a new dir)
```
for file in *.fastq.gz; do cp -a /home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastq/$file .; done
```

### Renaming Directory:
```
mv -T old/name new/name 
```

### Finding a folder
```
ls -l Data | grep <folder keyword/letter>

```
### Displaying list of files in all folders
```
find $(home/nazeefa/dinoflagellates/MMETSP03/Analysis_2) -type f
```

### Total count of files in folder (excluding symbolic links)
```
ls -l | grep -v ^l | wc -l
```

### Total count of files in folder
```
ls -1 | wc -l
```

### Confirming number of reads (example):

```
cat SRR1296786.fastq | grep "^@SRR" | wc -l
cat SRR1296786.fastq | grep "^+SRR" | wc -l
```

#### Installing Seqtk

https://github.com/lh3/seqtk

#### path
```
cd bin > nano .bashrc > export PATH=$PATH:/home/nazeefa/bin/seqtk/seqtk
```

#### Running Seqtk
```
seqtk trimfq -b 50 -e 0 fastq/SRR1296786_1.fastq.gz > trim_seqtk/786.fastq.gz
```

#### Saving running output (terminal) of bowtie2
```
bowtie2-build MMETSP0359.nt.fa MMETSP0359.nt.fa >> bowtie_data/bowtie_num_run.txt
```
