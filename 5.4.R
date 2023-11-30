
# Load libraries
library(ggplot2)
library(dplyr)

# Read the CSV file
movies_data <- read.csv("D:\\PESMCOE\\Data Science\\Assign 5\\IMDB-Movie-Data.csv")

# Create a scatterplot of imdb_rating and imdb_num_votes
scatter_plot <- ggplot(movies_data, aes(x = Rating, y = Votes)) +
  geom_point(color = "green", size = 3) +
  labs(title = "Scatterplot of IMDb Rating and Number of Votes",
       x = "IMDb Rating",
       y = "IMDb Number of Votes")

# Save the plot as a PNG file
ggsave("imdb_rating_vs_num_votes_scatterplot.png", scatter_plot, width = 10, height = 6, units = "in")

# Display the plot (optional)
print(scatter_plot)
