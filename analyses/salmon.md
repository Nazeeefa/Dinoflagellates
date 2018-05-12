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

* -l Format string describing the library type which is A i.e. 
* -o Output quantification directory
* -t FASTA format file containing target transcripts

["Salmon-Issue: Names are different"](https://github.com/COMBINE-lab/salmon/issues/140)

### For a list of flags:
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon
```
### specific flag - example:
```
/Salmon-latest_linux_x86_64/bin/salmon quant --help
/Salmon-latest_linux_x86_64/bin/salmon quant --help-alignments
```
### Output: Files

.json file = meta information about the run, including stats such as the number of observed and mapped fragments, details of the bias modeling etc

### RESULTS: Stats

| Sample Number | Total of Transcripts |Average of "NumReads" | Total of "NumReads" (1) | Total Reads (2) | Mapping Rate % (3) 
|--------       |   ----------------   | ----------            | ------------------------| -----------------| ----------  |
| 59            |                       | reads                 |                         |                 |            |
| 60            |       69908           | 208.736 reads        |      14592308            |  16785889        |   86.932    |
| 61            |                       | reads                |                 |          |       |
| 67            |                       | reads                |                 |          |       |
| 68            |                       | reads                |                |          |       |
| 69            |                        | reads                |                 |          |       |
| 70            |                       | reads                |                 |          |       |
| 71            |                       | reads                 |                 |          |       |

#### (0) Total of Transcripts
```
total of transcripts: cat 60_quant.sf | cut -f 1 | grep -c "CAMNT" 
```
#### (1) Counting total of "NumReads"
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2} END{print "sum=",sum}'
```
##### Print both columns while counting total of "NumReads"
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2 ; print $0} END{print "sum=",sum}'
```
#### (0) Average of "NumReads": Total of "NumReads" / Total of Transcripts
```
transcript_total=$(cat 60_quant.sf | cut -f 1,5 | grep -c "CAMNT") | numreads_total=$(cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2} END{print "sum=",sum}') | echo $(( numreads_total / transcript_total ))
```
```
transcript_total=$(cat 60_quant.sf | cut -f 1,5 | grep -c "CAMNT") | numreads_total=$(cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2}') | for i in {transcript_total,numreads_total,average_reads}; do echo "$i = ${!i}"; done

transcript_total=$(cat 60_quant.sf | cut -f 1,5 | grep -c "CAMNT") | numreads_total=$(cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2}') | avg=$(echo $(( $numreads_total / transcript_total ))) | for i in {transcript_total,numreads_total,avg}; do echo "$i = ${!i}"; done
```
##### Manual addition of transcript_total
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2/total_transcripts} END{print "sum=",sum}'
```
##### Print both columns while counting total of "NumReads"
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2/total_transcripts ; print $0} END{print "sum=",sum}'
```
#### (2) Total Reads (in FASTQ file)
```
zcat file.fastq.gz (see Analysis_2 folder) | paste - - - - | cut -f 1 | grep -c "@SRR"
```
#### (3) Mapping Rate Calculation
Count total of "NumReads" and divide by total number of reads in original fastq file** (it's same for forward and reverse)
** see "Analysis_2/fastq_samples" folder, most files are linked to files in bowtie folders (in assembly directory)
```
cat sample_quant.sf | cut -f 1,5 | awk '{sum+=$2/16785889 * 100 ; print $0} END{print "sum=",sum ,"%"}'
```
