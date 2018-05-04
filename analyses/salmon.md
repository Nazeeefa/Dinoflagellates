### Salmon v0.9.1

#### Transcript expression quantitation using Salmon: alignment-based mode

##### in sample directory:

```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant -t MMETSP0359.nt.fa -l A -a bowtie2_59.bam -o /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/salmon_data
```
Flags in the above command indicate the following:

* quant: Perform dual-phase, alignment-based estimation of
transcript abundance from RNA-seq reads

* -l Format string describing the library type
* -o Output quantification directory
* -t FASTA format file containing target transcripts

### For a list of flags:
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon
```
### specific flag - example:
```
/Salmon-latest_linux_x86_64/bin/salmon quant --help
/Salmon-latest_linux_x86_64/bin/salmon quant --help-alignments
```
