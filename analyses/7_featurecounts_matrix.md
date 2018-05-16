http://bioinf.wehi.edu.au/featureCounts/

https://www.biostars.org/p/96176/

### TransDecoder

#### Test: Sample 59
```
/home/nazeefa/bin/TransDecoder-TransDecoder-v5.3.0/TransDecoder.LongOrfs -t /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/MMETSP0359.nt.fa
```

> * Running CMD: /home/nazeefa/bin/TransDecoder-TransDecoder-v5.3.0/util/compute_base_probs.pl /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/MMETSP0359.nt.fa 0 > /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir/base_freqs.dat

-first extracting base frequencies, we'll need them later.

- extracting ORFs from transcripts.
-total transcripts to examine: 81854
[81800/81854] = 99.93% done    CMD: touch /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir.__checkpoints_longorfs/TD.longorfs.ok

#################################
### Done preparing long ORFs.  ###
##################################

	Use file: /home/nazeefa/dinoflagellates/MMETSP03/Data/counts_matrix/MMETSP0359.nt.fa.transdecoder_dir/longest_orfs.pep  for Pfam and/or BlastP searches to enable homology-based coding region identification.

	Then, run TransDecoder.Predict for your final coding region predictions.

#### Output:

```
/MMETSP0359.nt.fa.transdecoder_dir >> longest_orfs.gff3
```
