#Assignment 1: Estimating genotypes frequencies based on known allele frequencies
#Follow this link to ExAC database and search the SNV using its dbSNP reference number which is mentioned above
q <- 0.0003936
p <- 1 - q
p
Heterozygotes <- 2*p*q
Heterozygotes


#Assignment 2: Comparing the blood pressure in two groups
Group_with_variant <- c(90,81,88,89,91,99,94,85,89,93)
Group_no_variant <- c(80,75,82,83,78,80,81,85,77,76)
mean1 <- mean(Group_with_variant)
mean1
mean2 <- mean(Group_no_variant)
mean2
var1 <- var(Group_with_variant)
var1
var2 <- var(Group_no_variant)
var2
boxplot(Group_with_variant, Group_no_variant, names = c("Group1", "Group2"), ylab = "AGTR1 expression")
