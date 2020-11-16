###ASSIGNMENT 3
# Make a vector were you store the genotype data
genotype <- c("A/A","A/T","T/T","A/A","A/A","A/T","A/A","A/A","A/A","A/T")
genotype

#Make the tyab function to calculate the genotype counts
```{r, prompt=TRUE}
tb <- table(genotype)
tb
```
#Use the formula for counting the allele frequencies
#Indexing a table object
tb[1]
tb[2]
tb[3]

#calculating allele frequency for allele A
allelefreqA <- (2*tb[1] + tb[2])/(2*tb[1] +2*tb[2] +2*tb[3])
allelefreqA

allelefreqA <- as.numeric(allelefreqA)
allelefreqA

class(allelefreqA)

allelefreqT <- 1 - allelefreqA
allelefreqT
