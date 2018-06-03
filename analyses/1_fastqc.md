### 1. FASTQC Results

The quality of data is evaluated using FASTQC.

###### Data for following done:

| SRR        | Salinity (Sample #)|  Total Sequences| 
|--------    | -------------------|----- | 
| SRR1296786 |  SHTV-5_0 (59) 	     |  27365859  | 
| SRR1296972 |  SHTV-5_3 (60) 	     | 16785889 | 
| SRR1294400 | SHTV-5_30 (61)	       |  20841201 |
| SRR1296793 | SHHI-4_0 (67)       | 23109623 |
| SRR1296794 | SHHI-4_3 (68)	       | 22831746|
| SRR1296796 | SHHI-4_30 (69)	       | 24488163 | 
| SRR1294439 | PAER-2_0 (70)       |  20622130 |
| SRR1294440 | PAER-2_3 (71)	       |  21274591  |

###### SRR1296786  SHTV-5_0 (59)

| Reads	  | 
|-------- |
| Forwards |
| Reverse	  |

#### Count total number of sequences
```
echo $(zcat filename.fastq.gz | wc -l) / 4 | bc
```
