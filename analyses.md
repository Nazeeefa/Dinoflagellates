### 1. FASTQC Results

The quality of data is evaluated using FASTQC.

###### Data for following done:

| SRR        | Salinity (Sample #)|  0 PSU | 3 PSU	| 30 PSU	| 
|--------    | -------------------|-----   |---	   |---	    | 
| SRR1296786 |  SHTV-5_0 (59) 	     |   /	    |  	X    |   X   | 
| SRR1296972 |  SHTV-5_3 (60) 	     |   	X |   /  |   X   | 
| SRR1294400 | SHTV-5_30 (61)	       |  X   |   X  |  / |
| SRR1296793 | SHHI-4_0 (67)       | /   |  	X  |   X  |
| SRR1296794 | SHHI-4_3 (68)	       |   	X | /  |   X |
| SRR1296796 | SHHI-4_30 (69)	       |  X  |  X | /	 | 
| SRR1294439 | PAER-2_0 (70)       |  /  |   X  |   X   |
| SRR1294440 | PAER-2_3 (71)	       |   X	    |  / |   X	  |

###### SRR1296786  SHTV-5_0 (59)

| Reads	  | 
|-------- |
| Forwards |
| Reverse	  |


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

### 3. MultiQC Results

MultiQC analyses were performed to...

### 4. Trinity: RNA-Seq De novo Assembly Using Trinity

Trinity is utilised to understand 

```
sudo perl /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/TrinityStats.pl MMETSP0360.nt.fa > trinity_60.fa
```
Batch Process:
```
samples="MMETSP0367 MMETSP0368  MMETSP0369  MMETSP0370  MMETSP0371"
```
```
echo ${samples} | tr " " "\n" | while read sample; do cat ${sample}.nt.fa | sudo perl /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/TrinityStats.pl ${sample}.nt.fa >> assembly_stats/trinity_${sample}.fa; done
```
#### 4.1. Assembly Stats

Go to assembly_stats folder and check ("read") all files, with same extension (.txt) all at once:

```
cat ./*
```

| Sample Number | Trinity | N50 Values | Contig Length | 
|--------    | ----------| -----------| -----------|
| 59 |  81854 	 | Y |  |
| 60 |  69908 	 | Y |  |
| 61 |  83907 	 ||  |
| 67 |  76640 	 ||  |
| 68 |  77388 	 ||  |
| 69 |  80845 	 ||  |
| 70 |  64738 	 ||  |
| 71 |  66306 	 ||  |

Total number of reconstructed transcripts match up identically to total sequence count. The total number of 'genes' reported is same as total number of transcripts. In this case, given that it's original assembly and transcripts are not reported as alternative isoforms for the same gene, same amount for 'gene' and 'transcript' identifiers would be expected.

'Contig N50' values indicate that at least half of the assembled bases are in contigs of at least that contig length. N40 and N30 statistics indicate similar results in a context that as the corresponding length increases, the N-value decreases.

If an assembler 'reconstructs' transcript contigs for transcirpts that are very poorly expressed, these contigs will tend to high in amount and short in length, biasing the N50 value towards lower values (decrease).

High sequencing depth = more evidence (reads) available to enable reconstruction of short poorly expressed transcripts > therefore, downward skew of the N50 value."

#### 4.2 Bowtie2 (via Anaconda)

##### Linking fasta file to bowtie folders:

Link each fasta (.fa) file in *assembly folder* to corresponding bowtie folder (e.g. bowtie_60)
```
ln -s ../MMETSP0360.nt.fa
```
A high quality transcriptome assembly is expected to have strong representation of the reads (input to the assembler). Read representation can be quantified by aligning the RNA-Seq reads back to the transcriptome assembly. Bowtie2 aligner allows to align the reads to the Trinity assembly, and in doing so, take notice of the read representation statistics reported by the bowtie2 aligner.

Prior to **running the alignment**, index library for the Trinity assembly (RNA-seq data) is built using bowtie2 to each fasta file. 4-6 index files have been produced by the extension .bt2 (interpreted as bowtie2).

```
bowtie2-build MMETSP0360.nt.fa MMETSP0360
```
** Aligning the reads to the assembly **
```
bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2.bam
```
In the above command:
* --local = local alignment; ends might be soft clipped (off)
* --no-unal = suppress SAM records for unaligned reads
* -q = query input files are FASTQ .fq/.fastq (default)
* -x = index file(s) with .bt2 extensions

The results indicate high quality assembly i.e. more than ~70% of the aligned reads are mapped as proper pairs. In case of low quality, deeper sequencing and assembly of more reads would be expected for improvements.

#### 4.3 Indexing bam file using samtools

Using version: 1.3.1 (using htslib 1.3.1)

```
samtools index bowtie2_sampleNumber.bam
```

Another option:
```
sudo zypper install gnu_parallel
```
```
ls *.bam | parallel samtools index '{}'
```

