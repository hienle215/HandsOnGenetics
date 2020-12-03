## Exercise 4
library("qtl")
data(hyper)
summary(hyper)
out.mr <- scanone(hyper,method="mr")
plot(out.mr,ylab="LOD score")
operm <- scanone(hyper, n.perm=1000, verbose=FALSE)
threshold = summary(operm, alpha=0.05)
threshold = as.numeric(threshold)
sig = out.mr[out.mr$lod >= threshold,]
sig_sorted = sig[order(sig$lod, decreasing = TRUE),]
write.csv(sig_sorted, "significant_results_qtl.csv", quote = F)
head(sig_sorted)

# eQTL analysis study for finding variants associated to expression of HOXD9
df = read.csv("HOXD9_dataset.csv")
head(df)
rs711830_df = data.frame(df$rs711830, df$HOXD9_expression)
colnames(rs711830_df) = c("genotypes","expression")
rs711830_df = na.omit(rs711830_df)
res = kruskal.test(expression~genotypes, data=rs711830_df)
res = kruskal.test(rs711830_df$expression, rs711830_df$genotypes)
res
boxplot(expression~genotypes, ylab = "expression", xlab = "genotypes", data = rs711830_df)

# eQTL analysis for the complete data
eQTL.test = function(genotypes, expressions){
  df = data.frame(genotypes, expressions)
  df = na.omit(df)
  result = kruskal.test(expressions~genotypes, data=df)
  return(result$p.value)
}
eQTL.test(df$rs711830, df$HOXD9_expression)



