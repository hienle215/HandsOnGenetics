# Arithemetic operations and storing data to variables
(3+2)/(4*2)

# Ex2.1: The power operation
3**4

#Ex2.2: Assigning numeric values to variables
a <- 7
b <- 8
a
b

#Ex2.3: Sume of two numeric variables
results <- a+b
results

#Ex3.1 Creating a vector
bp <- c(70,65,61,64,69,80,85,78,77,90)
bp[1]
bp[10]

#Ex3.3 Length of the vector
length(bp)

#Ex4 Calculating the mean of a vector
mean(bp)
median(bp)
sd(bp)
var(bp)

#Ex5: Visualizing data using boxplots
bp <- c(70,65,61,64,69,80,85,78,77,90)
group1 <- bp[1:5]
group2 <- bp[6:10]
boxplot(group1, group2, names = c("group1","group2"), ylab = "blood pressure")
