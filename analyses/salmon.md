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
Salmon-latest_linux_x86_64/bin/salmon quant --help
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant --help-alignments
```
#### Terminal output, example:

WARNING: Detected suspicious pair --- 
    The names are different:
    read1 : SRR1296786.7822170
    read2 : SRR1296786.25797759
    The proper-pair statuses are inconsistent:
read1 [SRR1296786.7822170] : proper-pair; mapped; matemapped
read2 : [SRR1296786.7822170] : no proper-pair; mapped; matemapped

...

Completed first pass through the alignment file.
Total # of mapped reads : 26477867
#(number) of uniquely mapped reads : 26477866
#(number) ambiguously mapped reads : 1

[2018-05-04 03:13:17.845] [jointLog] [info] Computed 87582 rich equivalence classes for further processing <br>
[2018-05-04 03:13:17.845] [jointLog] [info] Counted 26477867 total reads in the equivalence classes <br>
[2018-05-04 03:13:17.870] [jointLog] [info] starting optimizer <br>
[2018-05-04 03:13:17.903] [jointLog] [info] Marked 0 weighted equivalence classes as degenerate <br>
[2018-05-04 03:13:17.904] [jointLog] [info] iteration = 0 | max rel diff. = 1 <br>
[2018-05-04 03:13:18.001] [jointLog] [info] iteration = 100 | max rel diff. = 1.77636e-16 <br>
