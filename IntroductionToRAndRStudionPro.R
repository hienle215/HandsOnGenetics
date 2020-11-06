#Ontrodction to R and R studio Pro
a <- 5
b <- 2
c <- a+b
d <- e+a

#Arithmetics
(1+2)/(3*4)
2**3
10%%4

#Comparions
3==3
3!=4
3<2
3>2
TRUE==1
TRUE==0
TRUE==TRUE
"A"=="A"

#Data strcture
num <- 5
var <- "ACGT"
boll <- TRUE
ls()
mode(var)
num + 2
rm(num)
ls


#Vector and data structure
values <- c(5,7,1)
values
length(values)
second <- values[2]
induces <- c(1,3)
new_values <- values[indices]
new_values


#Data frames and table like data structures
gexpr <- matrix(c(14,2,16,4,15,6), nrow = 2)
rownames(gexpr) <- c("AR", "FOXP2")
colnames(gexpr) <- c("Sample 1", "Sample 2", "Sample 3")
gexpr
dim(gexpr)
nrow(gexpr)
ncol(gexpr)
gexpr[,"Sample 1"]
gexpr["FOXP2", "Sample 2"]

#Data fame
study_subjects <- data.frame(ID=c(242,12,351), type=c("case", "case", "control"))
study_subjects
study_subjects$ID
calss(study_subjects)
class(gexpr)
rbind(study_subjects, study_subjects)
cbind(study_subjects, study_subjects)


#Programming
var <- 5
if (var > 3) {#Check if value in variable is above 3
  print("The value is greater than 3")
} else {
    print("The value is not greater than 3")
}
if(var %in% c(1,2,3,5,7)){#CHeck againt set of values!
  print("Value is small prime")
} else{
    print("Value is not small prime")
}


#Loops
for (i in 1:5){
  print(i) #Notice that we are printing without "-characters
}

#Data fames
dataf <- data.frame(a=c(1,2,3), b=c(4,5,6), c=c(7,8,9))
dataf

for(i in 1:nrow(dataf)){
  for(j in 1:ncol(dataf)){
    print(dataf[i,j])
  }
}

#Function
values
sum_of_values <- sum(values)
sum_of_values
char <- c("CA", "CG", "AA", "AT")
sort(char)
sort(values, decreasing = TRUE)

# Defining the new functions

sumValues = function(a,b){
     c = a + b
     return(c)
   }
sumValues(5,8)
