# Physical fitness scores for third graders
scores_a <- c(12, 22, 6, 9, 2, 9, 5, 9, 3, 5, 16, 1, 22, 18)
scores_b <- c(6, 12, 21, 23, 9, 10, 24, 21, 17, 11, 18, 19, 17, 5)
scores_c <- c(14, 16, 19, 19, 18, 3, 4, 21, 16, 20, 15, 14, 17, 4)
scores_d <- c(5, 22, 12, 15, 18, 20, 8, 10, 13, 20, 6, 9, 2, 17)
scores_e <- c(15, 9, 4, 15, 14, 19, 3, 24)

# Combine all scores into one vector
all_scores <- c(scores_a, scores_b, scores_c, scores_d, scores_e)

# Mean
mean_score <- mean(all_scores)
print(paste("Mean:", mean_score))

# Median
median_score <- median(all_scores)
print(paste("Median:", median_score))

# Mode
mode_score <- as.numeric(names(sort(table(all_scores), decreasing = TRUE)[1]))
print(paste("Mode:", mode_score))

# Range
range_score <- max(all_scores) - min(all_scores)
print(paste("Range:", range_score))

# Interquartile Range (IQR)
Q1 <- quantile(all_scores, 0.25)
Q3 <- quantile(all_scores, 0.75)
iqr_score <- Q3 - Q1
print(paste("Interquartile Range (IQR):", iqr_score))

# Normal distribution - You may want to use statistical tests or graphical methods for a more accurate assessment.

