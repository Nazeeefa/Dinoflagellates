#### FASTQC Results


| SRR        | Salinity (Sample #)|  0 PSU | 3 PSU	| 30 PSU	| 
|--------    | -------------------|-----   |---	   |---	    | 
| SRR1296786 |  SHTV-5_0 (59) 	     |   	    |  	    |   	    | 
| SRR1296972 |  SHTV-5_3 (60) 	     |   	    |   	  |   	    | 
| SRR1294400 | SHTV-5_30 (61)	       |   	    |   	  |   	 |
| SRR1296793 | SHHI-4_0 (67)       |       |  	   |   	  |
| SRR1296794 | SHHI-4_3 (68)	       |   	    |  	  |   	  |
| SRR1296796 | SHHI-4_30 (69)	       |    	   |  	   |   	 | 
| SRR1294439 | PAER-2_0 (70)       |        |   X  |   X   |
| SRR1294440 | PAER-2_3 (71)	       |   X	    |  	  |   X	  |

#### SRR1296786  SHTV-5_0 (59)

| Reads	  | 
|-------- |
| Forwards |
| Reverse	  |

#### MultiQC Results

* HEADCROP: 50 CROP: 101
* Reran with CROP: 50

#### Trinity: RNA-Seq De novo Assembly Using Trinity

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
 
| Sample Number | Trinity | N50 Values | Contig Length | 
|--------    | ----------| -----------|
| 59 |  81854 	 | Y |
| 60 |  69908 	 | Y |
| 61 |  83907 	 |
| 67 |  76640 	 |
| 68 |  77388 	 |
| 69 |  80845 	 |
| 70 |  64738 	 |
| 71 |  66306 	 |

The total number of reconstructed transcripts match up identically to count that was calculated earlier. The total number of 'genes' reported is the number of unique transcript identifier prefixes (without the isoform numbers). In this case, given that it's original assembly and transcripts are not reported as alternative isoforms for the same gene, same amount for 'gene' and 'transcript' identifiers would be expected.

'Contig N50' values indicate that at least half of the assembled bases are in contigs of at least that contig length. N40 and N30 statistics represent similar meaning - as the corresponding length increases, the N-value decreases.

" Isoforms with long sequence lengths =  N50 value will be skewed towards a higher value
If an assembler is able to reconstruct transcript contigs for those transcirpts that are very lowly expressed, these contigs will tend to be short and numerous, biasing the N50 value towards lower values (decrease).

High sequencing depth > more evidence (reads) available to enable reconstruction of these short lowly expressed transcripts > downward skew of the N50 value."

###### Assembly Stats: MMETSP0359.nt.fa


