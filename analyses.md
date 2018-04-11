### FASTQC Results

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

### MultiQC Results

MultiQC analyses were performed to

* HEADCROP: 50 CROP: 101
* Reran with CROP: 50

### Trinity: RNA-Seq De novo Assembly Using Trinity

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
##### Assembly Stats

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

### Linking fasta file to bowtie folders:

Link each fasta (.fa) file in *assembly folder* to corresponding bowtie folder (e.g. bowtie_60)
```
ln -s ../MMETSP0360.nt.fa
```

### Bowtie2 (via Anaconda)
Building an index library for RNA-seq data using bowtie2 to each fasta file. Six index files have been produced by the extension .bt2 which could be interpreted as bowtie2.

```
bowtie2-build MMETSP0360.nt.fa MMETSP0360
```
```
bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2.bam
```
In the above command:
* --local = local alignment; ends might be soft clipped (off)
* --no-unal = suppress SAM records for unaligned reads
* -q = query input files are FASTQ .fq/.fastq (default)
* -x = index file(s) with .bt2 extensions

###### To-do list:

- run the above command for all samples
- Follow the steps https://github.com/trinityrnaseq/KrumlovTrinityWorkshopJan2018/wiki/Home/82146dabdd7a26912f144da7e7757d56421f699d
- 
