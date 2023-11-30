

# Load libraries
library(ggplot2)
library(dplyr)

# Read the CSV file
movies_data <- read.csv("D:\\PESMCOE\\Data Science\\Assign 5\\IMDB-Movie-Data.csv")

# Subset the data for the first 50 movies
first_50_movies <- head(movies_data, 50)

# Create a histogram of imdb_num_votes
histogram_plot <- ggplot(first_50_movies, aes(x = Votes)) +
  geom_histogram(binwidth = 5000, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of IMDb Number of Votes (First 50 Movies)",
       x = "Number of Votes",
       y = "Frequency")

# Save the plot as a PNG file
ggsave("imdb_num_votes_histogram_50_movies.png", histogram_plot, width = 20, height = 6, units = "in")

# Display the plot (optional)
print(histogram_plot)
