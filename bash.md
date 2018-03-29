## Lists are helpful even for very-easy-to-remember stuff!

### Running FastQC:
```
find -name '*.fastq.gz' | xargs fastqc -o "dir/path"
Example (dir/path): "/home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastqc/fastqc_new_html"

```

## Counting sequnce characters in fastq.gz file
```
zcat *.fastq.gz | paste - - - - | cut -f 2 | head -1 | wc -c
```

## Installing Seqtk

https://github.com/lh3/seqtk

## path
```
cd bin
nano .bashrc
export PATH=$PATH:/home/nazeefa/bin/seqtk/seqtk
```

## Running Seqtk
```
seqtk trimfq -b 50 -e 0 fastq/SRR1296786_1.fastq.gz > trim_seqtk/786.fastq.gz
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
