library(Rsubread)
bam.files <- list.files(pattern = ".bam$", full.names = TRUE)
bam.files

fc <- featureCounts(bam.files, annot.ext="longest_orfs.gff3",isGTFAnnotationFile=TRUE,isPaired=TRUE, GTF.featureType="exon", GTF.attrType="ID", autosort=TRUE, checkFragLength=TRUE)
fc_table <- write.table(data.frame(fc$annotation,fc$counts,stringsAsFactors=FALSE),file="featurecounts.csv",quote=FALSE,sep="\t", row.names=TRUE)
read_table <- read.csv("featurecounts.csv", header = TRUE, sep=";", row.names = TRUE)

# names(fc_table$)
head(fc_table$annotation)
counts <- fc$counts
# Remove .bam or .sam from filenames
colnames(counts) <- gsub("\\.[b]am$", "", colnames(counts))
counts
# Put dataframe to CSV format table
write.table(counts, "counts.csv", sep = ",", col.names = T)
View(counts)

sink('featurecount_stat.txt', append=TRUE)
fc$stat
# Saves statistics to a text file
sink()
View(fc$stat)

cts <- read.csv("counts.csv")
head(cts)
View(cts)
# Sample information table
coldata <- read.csv("annotation.csv", sep=";",header=TRUE,row.names=1)
View(coldata)
coldata <- coldata[,c("condition","type")]

# Check the colnames and rownames to make sure they are in a consistent order
# View(colnames(cts))
# View(rownames(coldata))

all(rownames(coldata) %in% colnames(cts))
all(rownames(coldata) == colnames(cts))
# cts <- cts[, rownames(coldata)]
# all(rownames(coldata) == colnames(cts))
# View(check)

# Run the DESeq pipeline
library(DESeq2)

# Specifying an experimental design for later use in differential analysis. 
# The design label indicates that counts will be modelled i.e. the variables are columns of the cts, 
# and the + indicates that for differential expression analysis types of samples will be compared.
dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata, design = ~ type)
resultsNames(dds)
View(dds)

View(DESeq(dds))

# Normalization for sequencing depth
# CPM (counts per million): counts scaled by total number of reads. This measure accounts for sequencing depth only.
# following estimates size factors to account for differences in sequencing depth, and is only required for log.norm.counts object.
dds <- estimateSizeFactors(dds)
sf <- sizeFactors(dds)
View(sf)

dim(counts(dds))
head(counts(dds),3)
colData(dds)
head(rowRanges(dds))

# Counting total number of reads for each gene/exon
count_sf <- colSums(counts(dds))
View(count_sf)

library(ggplot2)
plot_seq_depth <- qplot(sf, count_sf) + geom_smooth(method='lm', se=FALSE)
plot_seq_depth + scale_x_continuous(name="Size Factor (Sequencing Depth)") +
  scale_y_continuous(name="Sum of counts per gene")

# histogram
logmeans <- rowMeans(log(counts(dds)))
hist(log(counts(dds)[,1]) - logmeans, 
     col="dark blue", main="", xlab="", breaks=40, xlim=c(-4, 4), ylim=c(0, 800))

# a matrix of log normalized counts:
log.norm.counts <- log2(counts(dds, normalized=TRUE) + 1)
log.norm <- normTransform(dds)
# Box Plot
rs <- rowSums(counts(dds))
boxplot(log2(counts(dds)[rs > 0,] + 1)) # not normalized
boxplot(log.norm.counts[rs > 0,]) # normalized

# Stabilising count variance
# uses the variance model for count data to shrink together the log-transformed counts for genes with very low counts
rld <- rlog(dds, blind=FALSE)
plot(assay(rld)[,1:6], cex=.1)
plot

# Display variability using normalised log
plotPCA(log.norm, intgroup="type")
# Display variability using regularised log
plotPCA(rld, intgroup="type")
plotPCA

rld <- rlogTransformation (dds , blind = TRUE )
rld

# intgroup allows to group the counts by variables which in this case are salinity levels and species names
plotPCA(rld, intgroup=c("type","condition"))

t <- (data <- plotPCA(rld, intgroup=c("type","condition"), returnData=TRUE))
View(t)
(percentVar <- 100*round(attr(data, "percentVar"),2))
makeLab <- function(x,pc) paste0("PC",pc,": ",x,"% variance")
library(ggplot2)
ggplot(data, aes(PC1,PC2,col=type,shape=condition)) + geom_point() +
  xlab(makeLab(percentVar[1],1)) + ylab(makeLab(percentVar[2],2))

library(airway)
dds <- DESeqDataSet(airway, design= ~ condition + type)
# design of the experiment, so that differences will be considered across sample and salinity
design(dds)
design(dds) <- ~ condition + type
levels(dds$type)
dds <- DESeq(dds)
dds
res <- results(dds)
head(res)
