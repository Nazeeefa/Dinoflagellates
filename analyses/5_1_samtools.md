
#### Indexing bam file using samtools

Using version: 1.3.1 (using htslib 1.3.1)

```
samtools index bowtie2_sampleNumber.bam >> files with .bai extension
```

Another option:
```
sudo zypper install gnu_parallel
```
```
ls *.bam | parallel samtools index '{}'
```
