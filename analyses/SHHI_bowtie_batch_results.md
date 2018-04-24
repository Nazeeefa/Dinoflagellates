### SHHI as a reference


#### Batch Run:

| SRR + Sample Name          | SHHI-4_0 (67)      |  SHHI-4_3 (68) | SHHI-4_30 (69)	| 
|--------                    | -------------------|-----           |---	       	    | 
| SRR1296786 + SHTV-5_0 (59) |         -          |   -	           |  	-            | 
| SRR1296972 +  SHTV-5_3 (60)|         -          |   -	           |  	-            | 
| SRR1294400 + SHTV-5_30 (61)|         -         |   -	           |  	-            | 	       
| SRR1296793 + SHHI-4_0 (67)|         X          |   -	           |  	-            |        
| SRR1296794 + SHHI-4_3 (68)|         -          |   X	           |  	-            | 	       
| SRR1296796 + SHHI-4_30 (69)|        -          |   -	           |  	X            | 	       
| SRR1294439 + PAER-2_0 (70)|         -          |   -	           |  	-            |        
| SRR1294440 + PAER-2_3 (71)|         -          |   -	           |  	-            | 	     

#### Results - Alignment Rate:

For alignment info of (forward and reverse) reads back to assembly of sample itself, see files named as: bowtie_align_60.txt

| SRR + Sample Name (Forward & Reverse reads)    | SHHI-4_0 (67)      |  SHHI-4_3 (68) | SHHI-4_30 (69) 	| 
|--------                                        | -------------------|-------------   |-----------	    | 
| SRR1296786 + SHTV-5_0 (59)                     |       74.21%       |   73.60%        |  	  72.87%     | 
| SRR1296972 +  SHTV-5_3 (60)                    |         72.86%     |   72.06%        |  	  70.96%     | 
| SRR1294400 + SHTV-5_30 (61)                    |        71.91%      |    71.50%      |  	71.51%       | 	       
| SRR1296793 + SHHI-4_0 (67)                     |    **86.41%**   |   83.85%  |  83.39%	     |        
| SRR1296794 + SHHI-4_3 (68)                     |      83.88%        |   **69.22%**       |  	83.48%     | 	       
| SRR1296796 + SHHI-4_30 (69)                    |         82.04%     |    82.05%       |  **X**        | 	       
| SRR1294439 + PAER-2_0 (70)                     |       65.12%       |   64.99%        |  65.11%     |        
| SRR1294440 + PAER-2_3 (71)                     |     64.35%         |   64.29%        |  	 64.79%     | 	 
