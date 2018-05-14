## Transcript Counts Matrix

[Information](https://github.com/trinityrnaseq/KrumlovTrinityWorkshopJan2018/wiki#generate-a-transcript-counts-matrix-and-perform-cross-sample-normalization)

```
/home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/abundance_estimates_to_matrix.pl --est_method salmon --out_prefix Trinity --name_sample_by_basedir /home/nazeefa/dinoflagellates/MMETSP03/Data/salmon/ --quant_files quant_files.list --gene_trans_map none
```

### Error
> /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl --matrix Trinity.isoform.TPM.not_cross_norm > Trinity.isoform.TMM.EXPR.matrixCMD: R --no-save --no-restore --no-site-file --no-init-file -q < Trinity.isoform.TPM.not_cross_norm.runTMM.R 1>&2 <br>
library(edgeR) <br>
Error in library(edgeR) : there is no package called ‘edgeR’ <br>
Execution halted <br>
Error, cmd: R --no-save --no-restore --no-site-file --no-init-file -q < Trinity.isoform.TPM.not_cross_norm.runTMM.R 1>&2  died with ret (256)  at /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl line 105. <br>
Error, CMD: /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl --matrix Trinity.isoform.TPM.not_cross_norm > Trinity.isoform.TMM.EXPR.matrix died with ret 6400 at /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/abundance_estimates_to_matrix.pl line 385

installed edgeR and reran the command, error:

> 
* Outputting combined matrix.

/home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl --matrix Trinity.isoform.TPM.not_cross_norm > Trinity.isoform.TMM.EXPR.matrixCMD: R --no-save --no-restore --no-site-file --no-init-file -q < Trinity.isoform.TPM.not_cross_norm.runTMM.R 1>&2 
> library(edgeR)
Loading required package: limma
> 
> rnaseqMatrix = read.table("Trinity.isoform.TPM.not_cross_norm", header=T, row.names=1, com='', check.names=F)
> rnaseqMatrix = as.matrix(rnaseqMatrix)
> rnaseqMatrix = round(rnaseqMatrix)
> exp_study = DGEList(counts=rnaseqMatrix, group=factor(colnames(rnaseqMatrix)))
Error in .isAllZero(counts) : missing values not supported
Calls: DGEList -> .isAllZero
Execution halted
Error, cmd: R --no-save --no-restore --no-site-file --no-init-file -q < Trinity.isoform.TPM.not_cross_norm.runTMM.R 1>&2  died with ret (256)  at /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl line 105.
Error, CMD: /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/support_scripts/run_TMM_scale_matrix.pl --matrix Trinity.isoform.TPM.not_cross_norm > Trinity.isoform.TMM.EXPR.matrix died with ret 6400 at /home/nazeefa/bin/trinityrnaseq-Trinity-v2.6.6/util/abundance_estimates_to_matrix.pl line 385.
