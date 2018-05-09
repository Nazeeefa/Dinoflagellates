### Salmon v0.9.1
Estimates transcript-level abundance from RNA-seq read data

### Building an index
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon index -t /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/60_bowtie_3/MMETSP0360.nt.fa -i athal_index .
```
#### Transcript expression quantitation using Salmon: alignment-based mode

##### in sample directory:

```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant -t MMETSP0359.nt.fa -l A -a bowtie2_59.bam -o /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/salmon_data
```
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant -t /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/60_bowtie_3/MMETSP0360.nt.fa -l A -a /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/60_bowtie_3/bowtie2_60.bam -o .
```
Flags in the above command indicate the following:

* quant: Perform dual-phase, alignment-based estimation of
transcript abundance from RNA-seq reads

* -l Format string describing the library type
* -o Output quantification directory
* -t FASTA format file containing target transcripts

["Names are different"](https://github.com/COMBINE-lab/salmon/issues/140)

### For a list of flags:
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon
```
### specific flag - example:
```
/Salmon-latest_linux_x86_64/bin/salmon quant --help
/Salmon-latest_linux_x86_64/bin/salmon quant --help-alignments
```
### Stats

| Sample Number | Average of "NumReads" | Total of "NumReads" (1) | Total Reads (2) | Mapping Rate (3) |
|--------       | ----------            | ------------------------| -----------------| ----------  |
| 59 |           208.736 reads            | 14592308  | 16785889              |    86.932 % |
| 60 |           	 |
| 61 |           	 |
| 67 |           	 |
| 68 |            	 |
| 69 |            	 |
| 70 |            	 |
| 71 |          	 | 

#### (0) Average of "NumReads"
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2/69908 ; print $0} END{print "sum=",sum}'
```
#### (1) Counting total of "NumReads"
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2 ; print $0} END{print "sum=",sum}'
```
#### (2) Total Reads (in FASTQ file)
```
```

#### (3) Mapping Rate Calculation
Count total of "NumReads" and divide by total number of reads in original fastq file** (it's same for forward and reverse)
** see "Analysis_2/fastq_samples" folder, most files are linked to files in bowtie folders (in assembly directory)
```
cat sample_quant.sf | cut -f 1,5 | awk '{sum+=$2/16785889 * 100 ; print $0} END{print "sum=",sum ,"%"}'
```
