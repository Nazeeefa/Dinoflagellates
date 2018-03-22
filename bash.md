## Lists are helpful even for very-easy-to-remember stuff!

### Running FastQC:
'''
find -name '*.fastq.gz' | xargs fastqc -o "dir/path"
'''

### Renaming Directory:
'''
mv -T old/name new/name 
'''
## Confirming number of reads (example):
'''
cat SRR1296786.fastq | grep "^@SRR" | wc -l
cat SRR1296786.fastq | grep "^+SRR" | wc -l

'''
