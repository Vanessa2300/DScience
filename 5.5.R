# Load the dataset
data(mtcars)

# Create a boxplot for mpg and cyl
boxplot(mpg ~ cyl, data = mtcars, 
        col = "brown", 
        main = "Boxplot of MPG by Cylinder Count",
        xlab = "Number of Cylinders", 
        ylab = "Miles per Gallon")
