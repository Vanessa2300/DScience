# Data
v <- c(7, 12, 28, 3, 41)

# Create a line plot
plot(v, type = "l", col = "blue", lwd = 2, xlab = "Index", ylab = "Values", main = "Line Graph")

# Save the plot
png("line_plot.png", width = 800, height = 400)  # Adjust width and height as needed
plot(v, type = "l", col = "blue", lwd = 2, xlab = "Index", ylab = "Values", main = "Line Graph")
dev.off()

# Display the plot (optional)
# You can uncomment the following line if you want to display the plot in the R environment
plot(v, type = "l", col = "blue", lwd = 2, xlab = "Index", ylab = "Values", main = "Line Graph")
