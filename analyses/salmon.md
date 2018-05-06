### Salmon v0.9.1

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
