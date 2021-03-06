## Collection of easy-to-remember commands (because lists are handy!)

### Running FastQC:
```
find -name '*.fastq.gz' | xargs fastqc -o "dir/path"
Example (dir/path): "/home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastqc/fastqc_new_html"

```

### Counting sequnce characters in fastq.gz file
```
zcat *.fastq.gz | paste - - - - | cut -f 2 | head -1 | wc -c
```

### Copying Symbolic link (files in a new dir)
```
for file in *.fastq.gz; do cp -a /home/nazeefa/dinoflagellates/MMETSP03/Analysis/fastq/$file .; done
```

### Renaming Directory:
```
mv -T old/name new/name 
```

### Renaming files (in batch) with same extension:
```
for file in *.fa 
do mv "$file" "${file%.fa}.txt"
done
```
or

```
rename '59' 60 *.bam
```

### Finding a folder
```
ls -l Data | grep <folder keyword/letter>
```
### Obtaining full path of file

```
readlink -f [file-name]
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

### Reading binary file e.g. bowtie files
```
Example: sudo xxd MMETSP0359.nt.fa.1.bt2 | less OR xxd -b filename
```

### Confirming number of reads (example):

```
cat SRR1296786.fastq | grep "^@SRR" | wc -l
cat SRR1296786.fastq | grep "^+SRR" | wc -l
```

#### adding path to bashrc
```
cd bin > nano .bashrc > export PATH=$PATH:/home/nazeefa/bin/seqtk/seqtk
```

#### Running Seqtk
```
seqtk trimfq -b 50 -e 0 fastq/SRR1296786_1.fastq.gz > trim_seqtk/786.fastq.gz
```

### Saving running output (terminal) of bowtie2
```
bowtie2-build MMETSP0359.nt.fa MMETSP0359.nt.fa >> bowtie_data/bowtie_sample-number_run.txt
```
