
df <- iris[, -ncol(iris)]

df <- scale(df)
df <- as.data.frame(df)

library(dbscan)
kNNdistplot(df, k = 5)
abline(h = 0.8, col = "red")
