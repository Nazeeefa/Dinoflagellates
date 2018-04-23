## Information

The data contains paired-end FASTQ formatted Illlumina read files for each of the three strains (SHTV, SHHI, and PAER). All RNA-Seq data can be found at [iMicrobe](https://www.imicrobe.us/#/investigators/180). 

Each biological replicate (eg. SRR129...) contains a pair of fastq files (eg. SRR129.._1.fastq.gz for the 'left/forward' and SRR129..._2.fastq.gz for the 'right'/reverse read of the paired end sequences).
 
### Experimental salinity level for each strain

| SRR        | Salinity (Sample #)|  0 PSU | 3 PSU	| 30 PSU	| Done | Read Length (Forward & Reverse)|
|--------    | -------------------|-----   |---	   |---	    | ---  | -----|
| SRR1296786 |  SHTV-5_0 (59) 	     |   	-    |  	    |   	    |     |  100 -> 50 |
| SRR1296972 |  SHTV-5_3 (60) 	     |   	    |  - 	  |   	    | Y    |   50 |
| SRR1294400 | SHTV-5_30 (61)	       |   	    |   	  |  - 	 | Y       | 101  |
| SRR1296793 | SHHI-4_0 (67)*       |   -    |  	   |   	  |        |  50 |
| SRR1296794 | SHHI-4_3 (68)	       |   	    |  -	  |   	  | Y       |  50 |
| SRR1296796 | SHHI-4_30 (69)	       |    	   |  	   |   -	 | Y       |  50 |
| SRR1294439 | PAER-2_0 (70)       |    -    |   X   |   X   |         | 50 |
| SRR1294440 | PAER-2_3 (71)	       |   	    |  -	  |   	  | Y       |   50 |

Key:

+ 67 = [Click on 'All runs'](https://www.ncbi.nlm.nih.gov/sra/?term=SRR1294439)*
+ PSU = Practical Salinity Unit; 1 g salt per 1000 grams of water = 1 PSU [Source](https://podaac.jpl.nasa.gov/SeaSurfaceSalinity)
+ SH = *Scrippsiella Hangoei* //  (Habitat: Sediment, previously known as *A. malmogiense*)
+ PA = *Peridinium aciculiferum* (Habitat: Freshwater, previously known as *A. aciculiferum*)

### Data for Analyses

1.SRR (SRA Run Accession)** numbers were obtained from NCBI ([Example](https://www.ncbi.nlm.nih.gov/sra?LinkName=biosample_sra&from_uid=2740276)).
* SRR numbers corresponds to IDs listed at [iMicrobe](https://www.imicrobe.us/#/investigators/180).
* FASTQ files, for both forward and reverse reads, were downloaded from ENA ([Example](https://www.ebi.ac.uk/ena/data/view/SRR1294400)).

** You can read about accession types [here](https://www.ncbi.nlm.nih.gov/books/NBK56913/#search.what_do_the_different_sra_accessi).

<<< Please see analyses.md for information on programs and running processes >>>

### File Structure

1. MMETSP03 folder

* Analysis

  * fastq folder
  
    * fastq.gz files as symbolic links pointing to /Data/fastq/SRRCode_1(or SRRCode_2).fastq.gz
  
  * fastqc folder
  
    * fastqc analyses with HTML files and fastqc.zip files
  
  * multiQC (folder)
  
    * multiqc_report.html
    
    * multiQC_data (folder): log/stats files relative to multiQC run

* Analysis_2

  * fastq files for all samples with strain names i.e. SHTV, SHHI, etc

* Data

  * fastqc folder
  
    * fastq.gz files - downloaded between 20-21 March
 
 * assembly
