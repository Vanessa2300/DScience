# Load libraries
library(ggplot2)
library(dplyr)

# Read the CSV file
movies_data <- read.csv("D:\\PESMCOE\\Data Science\\Assign 5\\movies_data.csv")

# Subset the data for the first 10 movies
first_10_movies <- head(movies_data, 10)

# Create a bar chart of critics_score for the first 10 movies
bar_plot <- ggplot(first_10_movies, aes(x = Movie, y = criticRating)) +
  geom_bar(stat = "identity", fill = "skyblue", width = 0.7) +
  labs(title = "Critics' Scores for the First 10 Movies",
       x = "Movie Title",
       y = "Critics Score") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Save the plot as a PNG file
ggsave("critics_score_bar_chart.png", bar_plot, width = 10, height = 6, units = "in")

# Display the plot (optional)
print(bar_plot)
