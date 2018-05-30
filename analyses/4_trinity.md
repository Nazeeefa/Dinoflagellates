### 4. Trinity: RNA-Seq De novo Assembly Using Trinity

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
#### Assembly Stats

Go to assembly_stats folder and check ("read") all files, with same extension (.txt) all at once:

```
cat ./*
```

### Count
```
cat file.nt.fa | grep -v ">" | wc -l
```
### List of sequence ID-lines
```
less  MMETSP0359.nt.fa | grep ">" $1
```

| Sample Number | Number of Sequences (in assembly/contig) |
|--------    | ---- |
| 59 |  81854 	 | Y | 
| 60 |  69908 	 | Y | 
| 61 |  83907 	 |  |
| 67 |  76640 	 |  |
| 68 |  77388 	 |  |
| 69 |  80845 	 |  |
| 70 |  64738 	 |  |
| 71 |  66306 	 |  |

Total number of reconstructed transcripts match up identically to total sequence count. The total number of 'genes' reported is same as total number of transcripts. In this case, given that it's original assembly and transcripts are not reported as alternative isoforms for the same gene, same amount for 'gene' and 'transcript' identifiers would be expected.

'Contig N50' values indicate that at least half of the assembled bases are in contigs of at least that contig length. N40 and N30 statistics indicate similar results in a context that as the corresponding length increases, the N-value decreases.

If an assembler 'reconstructs' transcript contigs for transcirpts that are very poorly expressed, these contigs will tend to high in amount and short in length, biasing the N50 value towards lower values (decrease).

High sequencing depth = more evidence (reads) available to enable reconstruction of short poorly expressed transcripts > therefore, downward skew of the N50 value."
