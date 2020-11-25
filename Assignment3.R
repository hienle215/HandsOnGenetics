# Hands on genetics exercies 3
title: |
  | BTK1062 Hands-on Genetics.
| Exercise 3: GWAS
author: Hien Le
date: "11/23/2020"
output: 
  pdf_document:
  number_sections: true
---
  
  
  **Assignment 5: PLINK: Answer following questions.**
  
  #. Explain shortly in your own words plink command line parameter --assoc
  #. PLINK.assoc show the SNP association controlling for strata. In this case, 89 people was treated automatically the analysis as a quantitative trait analysis with the same analyzing codintion. The final results in assoc cover the patients and health people.
  
  #. --adjust
  #. To generate a file of adjusted significance values that correct for all tests performed and other metrics, the results was presented in plink.adjust file. plink.assoc.adjusted contains all adjust values of 179493 variants.
  
  #. --ped
  #. PED file is specfified separately in plink --ped mydata.ped --map autosomal.map. PED file is delimited file with the first six columns including: Family ID, individual ID, Paternal ID, maternal ID, sex ( 1 = male, 2 = female, other = unknown) and phenotype.
  
  #. --map
#. MAP files in PLINK describes a signle market and must contain exactly 4 columns: chromosome (1-22, X, Y, or = if unplaced), snp identifier, genetic distance, and base-pair position. In general, the ped and map file in PLINK are similar. We can export the file to excel and seen the results of individual 89 people

#. --maf
#. maf file in PLINK will filter out 46404 variants which include minor allele frequency in threshold with default 0.01.

#. --geno
#.geno file in PLINK will present the information about 2728 varients which were removed in the analysis by missing genotype.

#. --mind
#. PLINK generates a number of standar summary statistics that are useful for quality control. All the per-SNP summary statistics described are conducted adter removing 2728 variants missing genotype, 69 variants removing due to Hardy-Weinberg test, and 46404 variants removing due to the minor allele threshold. Therefore, all SNP will be defined by the --mind option in PLINK from 179493 variants.

#. --hwe
#. hwe is Hardy-Wenberg Equilibrium to exclude markers that failure the HW test at a specified significance threhold.

#. Interpret `plink.log` - file. How many variants and individuals are in this study? How many cases and controls? How many variants remain after filtering?
# Based on PLINK.log, 89 individuals and 228694 varients were used in this study. 48 cases and 41 controls were performed.after filtering, 179493 varients were remained to analysis.

**Assignment 6: Manhattan plots and interpreting the data.**
  
  #. Explain what you see in the manhattan plot. What is blue line in y-axis? To what P value it corresponds?
  #. Manhattan plot play the association statistical significance as -log10(p-value) in the y-axis against chromosome in the x-axis. The plot shows 179493 variants in one figure. THe blue line corresponds to the suggestive threshold of p = 1.00e-05.
  
  #. Explain `manhattan`- function parameter annotatePval
  #. Function manhattan has 2 parameters: (1)The data which is read from the above steps, is now being analyzed in manhattan function.(2) The threshold is set as annotatePval = 5e-06. It is showed in the output plot
  
  #. Explain shortly what different columns in PLINK result file `plink.assoc` mean. 
  #. CHR: chromosome code. SNP: Variant identifier. BP: base-pair coordinate.  A1: Allele 1 usually minor. F-A: Allele 1 frequency among 48 cases. F-U: Allele 1 frequency among 41 cases control. A2: Allele 2. CHISQ: Allelic test chi-square. P: Allelic p-value. OR: odds(Allele 1/case)/odds(Allele 1/control). Hearder: CHR, SNP, BP, A1, F_A, F_U, CHISQ, P, and OR.
  
  #. Load file `plink.assoc.adjusted` to R variable named as `adjusted_data`
```{r, prompt=TRUE}
addjust_data <- read.table("plink.assoc.adjusted", header = T)
head(addjust_data)
```

#. Examine `adjusted_data`. Find out 4 most significant SNP id's by FDR_BH and report them.
#. Four most significant SNP id: rs2513514 from CHR 11, rs6110115 from CHR 20, rs2508756 from CHR 11, rs16976702 from CHR 15.

#. Check out 4 most significant SNPs from dbSNP refseq Report. Do you find Clinical Significance for any of them? In which chromosomes they are?
#. Variant rs2513514 from Chromosome 11.  
#. Variant rs6110115 from Chromosome 20. 
#. Variant rs2508756 from Chromosome 11. 
#. Variant rs16976702 from Chromosome 15.


### Coding
library("qqman")
manhattan(data,annotatePval=5e-06)
data1 <- read.table("plink.assoc.adjusted", header = T)
head(data1)