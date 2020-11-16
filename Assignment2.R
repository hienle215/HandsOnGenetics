---
  title: |
  | BTK1062 Hands-on Genetics.
| Exercise 2: R basics 2/2
author: Hien Le
date: "13/11/2020"
output: 
  pdf_document:
  number_sections: true
---
  
  **ASSIGNMENT 3: Counting allele frequencies**
  
  For this assignment complete the following steps:
  ```{r, prompt=TRUE}
#. Make a vector were you store the genotype data. (Hint: example 1.2)

genotype <- c("A/A","A/T","T/T","A/A","A/A","A/T","A/A","A/A","A/A","A/T")
genotype
```

```{r, prompt=TRUE}
#the table function to calculate the genotype counts. (Hint: example 1.3)

tb <- table(genotype)
tb
```


#. Use the formula for counting the allele frequencies. (Hint : examples 1.4 - 1.6)

```{r, prompt=TRUE}
#Indexing a table object
tb[1]
tb[2]
tb[3]
```

```{r, prompt=TRUE}
# Calculating allele frequency for allele A
allelefreqA <- (2*tb[1] + tb[2])/(2*tb[1] +2*tb[2] +2*tb[3])
allelefreqA
```

```{r, prompt=TRUE}
# Calculating allele frequency for allele T
allelefreqT <- 1 - allelefreqA
allelefreqT
```

```{r, prompt=TRUE}
#. **Question:** What are the allele frequencies of A and T?
# In the population, the allele A exhibits 75% the phenotype and allele T exists 25% phenotype in the inheritance.
```

**ASSIGNMENT 4: Testing if a locus is associated to a Mendelian genetic trait**
  ```{r, prompt=TRUE}
#. First store the color column of **peas** as a vector to some variable.
peas <- read.csv("peas_crossing.csv", header = TRUE)
head(peas)
```