# R basic 2/2

# Char data type
#EX1
str <- "ATGC"
str

#Example 1.2 Storing character data to a vector
genotype <- c("A/A", "A/G", "A/G", "G/G","G/G")

#Example 1.3 Calculating occurencencies of elements of a vector
tb <- table(genotype)
tb

#Example 1.4 Indexing a table object
tb[1]
tb[2]
tb[3]

#Example 1.5 Calculating allele frequency for allele A

allelefreqA = = (2*tb[1] + tb[2]) / (2*tb[1] + 2*tb[2] + 2*tb[3])
allelefreqA

#Example 1.6 Conversion to numeric data
allefreqA <- as.numeric(allelefreqA)
allelefreqA

class(allelefreqA)

#Example 1.7 Calculating allele frequency for allele G
allefreqG <- 1-allelefreqA
as.numeric(allefreqG)

###Working with tabular data in R : Data frames
#Example 2.1 Creating a dataframe
df <- data.frame(c("A", "B", "C"), c(10,20,30))
df

#Example 2.2 Naming columns
colnames(df) <- c("label", "values")
df

#Example 2.3 Selecting single elements from a data frame
df[3,1]

#Example 2.4 Selecting a row from a data frame
df[3,]

#Example 2.5 Selecting a columns from a data frame
df[,2]

#Example 2.6 An alternative way of selecting columns
df$label
df$value

###The chi-squared test
counts <- c(489,11)
probabilities <- c(50/51, 1/51)
chisq.test(counts, p = probabilities)


#Reading data in to R
peas <- read.csv("peas_crossing.csv", header = TRUE)

