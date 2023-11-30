# Install and load the 'arules' package
# install.packages("arules")
library(arules)

# Load your market basket dataset
# Replace 'your_dataset.csv' with the actual path to your dataset
data("Groceries")
#data <- read.csv('your_dataset.csv', header = FALSE)

# Convert the dataset into transactions format
#transactions <- as(Groceries, 'transactions')

# Apply the Eclat algorithm with minimum support
frequent_itemsets <- eclat(Groceries, parameter = list(support = 0.003, minlen=4))

# Display the frequent itemsets
inspect(frequent_itemsets[1:10])

print("Top 10 items frequently bought together")
inspect(sort(frequent_itemsets, by = 'support', decreasing = TRUE)[1:10])

##################################2nd way(shruti)

library(arules)
rules = eclat(data = Groceries, parameter = list(support = 0.004, minlen = 3))

print('the items which are bought frequently:')

inspect(sort(rules, by = 'support')[1:10])
