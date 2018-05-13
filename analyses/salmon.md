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
|--------       |   ----------------   | ----------           | ------------------------| ---------------| ----------  |
| SHTV-5_0 (59) |      81854           | 323.477              |    26477867             |    27365859    |   96.7551  |
| SHTV-5_3 (60) |       69908          | 208.736              |      14592308           |  16785889       |   86.932    |
| SHTV-5_30 (61)|       83907          |                      |      19843840           |   20841201       | 95.2145 |
| SHHI-4_0 (67) |       76640          | reads                |      20838935           |  23109623        |   90.1743 |
| SHHI-4_3 (68) |       77388          | reads                |      20483502           |   22831746       |   89.715   |
| SHHI-4_30 (69)|        80845         | reads                |      21891329           |  24488163        |  89.3956     |
| PAER-2_0 (70) |       64738          | reads                |      17843002           |  20622130        |   86.5236    |
| PAER-2_3 (71) |       66306          | reads                |      18425504           |  21274591        |   86.608    |

#### (0) Total of Transcripts
```
cat *_quant.sf | cut -f 1 | grep -c "CAMNT" 
```
#### (1) Counting total of "NumReads"
```
cat *_quant.sf | cut -f 1,5 | awk '{sum+=$2} END{print "sum=",sum}'
```
##### Print total of each of both columns
```
transcript=$(cat *_quant.sf | cut -f 1,5 | grep -c "CAMNT" ) | numreads=$(cat *_quant.sf | cut -f 1,5 | awk '{numreads+=$2} END{print "numreads=", numreads}' ) | for i in {transcript,numreads}; do echo "$i = ${!i}"; done
```
#### (0) Average of "NumReads": Total of "NumReads" / Total of Transcripts...
```
echo $(( numreads / transcript))
```
##### Manual addition of transcript_total to calculate average
```
cat *_quant.sf | cut -f 1,5 | awk '{sum+=$2/total_transcripts} END{print "sum=",sum}'
```
```
To print both columns in terminal, add: " ; print $0} " before END{print "sum="...'
```
#### (2) Total Reads (in FASTQ file)
```
see Analysis_2 folder for .gz
zcat *.fastq.gz | paste - - - - | cut -f 1 | grep -c "@SRR"
```
#### (3) Mapping Rate Calculation
Count total of "NumReads" and divide by total number of reads in original fastq file** (it's same for forward and reverse)
** see "Analysis_2/fastq_samples" folder, most files are linked to files in bowtie folders (in assembly directory)
```
cat sample_quant.sf | cut -f 1,5 | awk '{sum+=$2/16785889 * 100 ; print $0} END{print "sum=",sum ,"%"}'
```
