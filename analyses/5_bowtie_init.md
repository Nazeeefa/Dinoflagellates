### Bowtie2 (via Anaconda)

#### Linking fasta file to bowtie folders:

Link each fasta (.fa) file in *assembly folder* to corresponding bowtie folder (e.g. bowtie_60)
```
ln -s ../MMETSP0360.nt.fa
```
A high quality transcriptome assembly is expected to have strong representation of the reads (input to the assembler). Read representation can be quantified by aligning the RNA-Seq reads back to the transcriptome assembly. Bowtie2 aligner allows to align the reads to the Trinity assembly, and in doing so, take notice of the read representation statistics reported by the bowtie2 aligner.

#### Building a bowtie2 index for the Trinity assembly

Prior to **running the alignment**, library index for the Trinity assembly (RNA-seq data) is built using bowtie2 to each fasta file. 4-6 index files have been produced by the extension .bt2 (interpreted as bowtie2).

```
bowtie2-build MMETSP0360.nt.fa MMETSP0360
```
#### Aligning the reads to the assembly

Alignment (for paired-end reads) is then performed to capture the read alignment statistics.

```
bowtie2 --local --no-unal -x MMETSP0359.nt.fa -q -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_1P.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_0_2P.fastq.gz | samtools view -Sb - | samtools sort -o - - > bowtie2.bam
```
Flags in above commands:

* --local = local alignment; ends might be soft clipped (off)
* --no-unal = suppress SAM records for unaligned reads
* -q = query input files Nare FASTQ .fq/.fastq (default)
* -x = index file(s) with .bt2 extensions

The results indicate high quality assembly i.e. more than ~70% of the aligned reads/fragments are mapped as proper pairs back to the assembly (yielding concordant alignments 1 or more times to the reconstructed transcriptome). In case of low quality, deeper sequencing and assembly of more reads would be expected for improvements.

Here, the reads are aligend to themselves. The subsequent analyses will involve using SHTV-5 samples (0, 30, 30) as references and running against all including each other (but not sample against itself as it has already been done).
