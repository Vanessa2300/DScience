#install.packages("dslabs")
library(dslabs)
data("tissue_gene_expression")
df <- data.frame(tissue_gene_expression)
df
cl <- kmeans(tissue_gene_expression$x, centers = 7)
table(cl$cluster, tissue_gene_expression$y)