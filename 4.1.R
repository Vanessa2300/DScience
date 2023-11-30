#install.packages("RColorBrewer")
#install.packages("arulesViz")

library(arules)
library(arulesViz)
library(RColorBrewer)
library(datasets)
# import dataset
data("Groceries")

# using apriori() function
rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))


# using inspect() function
inspect(rules[1:5])



rules <- sort(rules, by = 'confidence', decreasing = TRUE)

# Display the top 5 rules
#top_5_rules <- head(rules, 5)
# Display the top 5 rules
top_5_rules <- head(rules, 5)

# Highlight the strong rules (you can customize the threshold)
strong_rules <- subset(top_5_rules, confidence > 0.9)

# Display the top 5 rules and highlight the strong ones
inspect(strong_rules)
 #using itemFrequencyPlot() function
arules::itemFrequencyPlot(Groceries, topN = 20, 
                         col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
