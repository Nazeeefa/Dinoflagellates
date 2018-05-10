## Test Sample: SHTV-5_3

### Approach A
Usage: fasta and bam file

-rw-r--r-- 1 nazeefa users     299 May  6 20:08 cmd_info.json
drwxr-xr-x 2 nazeefa users       6 May  6 20:08 libParams

### Output - 60_quant.sf:

#### TSV format file listing the transcript identifier (Name) of each transcript, its length (Length), effective length, and its abundance in terms of Transcripts Per Million (TPM)** and number of RNA-Seq fragments predicted to be originated from that transcript (NumReads)

| Name                  |  Length | EffectiveLength | TPM   |  NumReads  |
|-----------------------|---------|-----------------|-------|--------------------|
|CAMNT_0050930533        1444    1390.904        10.357231       378.000000 |
| CAMNT_0050930535        1151    1097.904        9.094648        262.000000 |
| CAMNT_0050930537        1561    1507.904        15.214995       602.000000 |
| CAMNT_0050930541        489     438.191         6.696932        77.000000  |
| CAMNT_0050930543        1721    1667.904        11.379084       498.000000 |
| CAMNT_0050930783        480     429.237         29.299886       330.000000 |
| CAMNT_0050930785        269     219.459         15.976563       92.000000  |
| CAMNT_0050930789        1183    1129.904        6.745862        200.000000 |
| CAMNT_0050930791        354     303.892         25.458098       203.000000  |

[2018-05-06 20:25:05.248] [jointLog] [info] Computed 74271 rich equivalence classes for further processing
[2018-05-06 20:25:05.248] [jointLog] [info] Counted 14592308*** total reads in the equivalence classes 

** TPM indicates the normalized expression values for the expression of that transcript in the sample
*** 14592308 is total of values in NumReads column

#### Mapping Rate was manually calculated
```
cat 60_quant.sf | cut -f 1,5 | awk '{sum+=$2/16785889 * 100 ; print $0} END{print "sum=",sum ,"%"}'
```
For all mapping rate calculations, see "salmon.md" file

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

## Approach B

### 1. Index building
´´´
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon index -t /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/60_bowtie_3/MMETSP0360.nt.fa -i athal_index .
´´´
### 2. Quantifying samples
´´´
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant -i 60_athal_index -l A -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/SHTV-5_3_2.fastq.gz -p 8 -o .

´´´

### Output:

#### TSV format file listing the transcript identifier (Name) of each transcript, its length (Length), effective length, and its abundance in terms of Transcripts Per Million (TPM) and estimated number of reads (NumReads) originating from this transcript

Name    Length  EffectiveLength TPM     NumReads
CAMNT_0050930533        1444    1264.065        7.224368        377.000000
CAMNT_0050930535        1151    971.065 6.660256        267.000000
CAMNT_0050930537        1561    1381.065        10.050055       573.000000
CAMNT_0050930541        489     311.393 5.834186        75.000000
CAMNT_0050930543        1721    1541.065        7.827739        498.000000
CAMNT_0050930783        480     302.521 18.707857       233.642392
CAMNT_0050930785        269     103.340 17.814397       76.000000
CAMNT_0050930789        1183    1003.065        4.636605        192.000000
CAMNT_0050930791        354     180.390 19.303505       143.753941

### Info

-rw-r--r-- 1 nazeefa users     351 May  7 09:44 cmd_info.json
-rw-r--r-- 1 nazeefa users     681 May  7 09:44 lib_format_counts.json
drwxr-xr-x 2 nazeefa users      26 May  7 09:44 libParams
-rw-r--r-- 1 nazeefa users 3422555 May  7 09:44 quant.sf

Computed 81241 rich equivalence classes for further processing
Counted 12871515 total reads in the equivalence classes 
Mapping rate = 76.6806%

#### Mapping Rate was calculated the following way:
```
```
