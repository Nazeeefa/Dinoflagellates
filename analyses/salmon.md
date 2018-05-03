### Salmon v0.9.1

#### Transcript expression quantitation using Salmon: alignment-based mode

```
samples="SHTV-5_0 SHTV-5_3 SHTV-5_30 SHHI-4_0 SHHI-4_3 SHHI-4_30 PAER-2_0 PAER-2_3"
```
```
echo ${samples} | tr " " "\n" | while read sample; do 
```
### For a list of flags:

```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon

```
### specific flag - example:
```
/home/nazeefa/bin/Salmon-latest_linux_x86_64/bin/salmon quant --help
```
