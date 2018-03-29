## Lists are helpful even for very-easy-to-remember stuff!

### Running FastQC:
```
find -name '*.fastq.gz' | xargs fastqc -o "dir/path"
Example (dir/path): "/home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastqc/fastqc_new_html"

```

### Renaming Directory:
```
mv -T old/name new/name 
```

### Confirming number of reads (example):

```
cat SRR1296786.fastq | grep "^@SRR" | wc -l
cat SRR1296786.fastq | grep "^+SRR" | wc -l
```
