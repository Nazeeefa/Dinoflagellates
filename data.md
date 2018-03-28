## Experimental salinity level for each strain

| SRR        | Salinity (Sample #)|  0 PSU | 3 PSU	| 30 PSU	| Done |
|--------    | -------------------|-----   |---	   |---	    | ---  |
| SRR1296786 |  SHTV-5 (59) 	     |   	    |  	    |   	    |      |
| SRR1296972 |  SHTV-5 (60) 	     |   	    |  - 	  |   	    | Y    |
| SRR1294400 | SHTV-5 (61)	       |   	    |   	  |  - 	 | Y    |
| SRR1296793 | SHHI-4 (67)	       |   	    |  	   |   	  |      |
| SRR1296794 | SHHI-4 (68)	       |   	|  -	  |   	  | Y    |
| SRR1296796 | SHHI-4 (69)	       |   	|  	   |   -	 | Y    |
| SRR1294439 | PAER-2 (70) 	      |   	|   	  |   	  |      |
| SRR1294440 | PAER-2 (71)	       |   	|  -	  |   	  | Y    |

Key:

+ PSU = Practical Salinity Unit; 1 g salt per 1000 grams of water = 1 PSU [Source](https://podaac.jpl.nasa.gov/SeaSurfaceSalinity)
+ SH = *Scrippsiella Hangoei* (Habitat: Sediment)
+ PA = *Peridinium aciculiferum* (Habitat: Freshwater)

## Analyses

1.SRR (SRA Run Accession)** numbers were obtained from NCBI ([Example](https://www.ncbi.nlm.nih.gov/sra?LinkName=biosample_sra&from_uid=2740276)).
* SRR numbers corresponds to IDs listed at [iMicrobe](https://www.imicrobe.us/#/investigators/180).
* FASTQ files, for both forward and reverse reads, were downloaded from ENA ([Example](https://www.ebi.ac.uk/ena/data/view/SRR1294400)).

** You can read about accession types [here](https://www.ncbi.nlm.nih.gov/books/NBK56913/#search.what_do_the_different_sra_accessi).

2. MultiQC

```
Analysis folder > multiQC -o multiQC/ .
```

## File Structure

1. MMETSP03 folder

* Analysis

  * fastq folder
  
    * fastq.gz files as symbolic links pointing to /Data/fastq/SRRCode_1(or SRRCode_2).fastq.gz
  
  * fastqc folder
  
    * fastqc analyses with HTML files and fastqc.zip files
  
  * multiQC (folder)
  
    * multiqc_report.html
    
    * multiQC_data (folder): log/stats files relative to multiQC run

* Data

  * fastqc folder
  
    * fastq.gz files - downloaded between 20-21 March
