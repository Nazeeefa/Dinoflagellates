### Salmon v0.9.1

#### Transcript expression quantitation using Salmon

```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do /home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant -i athal_index -l A -1 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_1.fastq.gz -2 /home/nazeefa/dinoflagellates/MMETSP03/Analysis_2/fastq_samples/${sample}_2.fastq.gz -p 8 -o /home/nazeefa/dinoflagellates/MMETSP03/Data/assembly/salmon_data/${sample}_quant
```
### For a list of flags:

```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon

```
### specific flag
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant --help
```
