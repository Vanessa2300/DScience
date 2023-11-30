things <- data.frame(ingredient =  c("grape", "green bean" , "nuts" , "orange"),
                     sweetness = c(8,3,3,7),
                     crunchiness = c(5,7,6,3),
                     class = c("fruit", "vegetable", "protein", "fruit"))

things

unknown <- data.frame(ingredient =  "tomato",
                     sweetness = 6,
                     crunchiness = 4,
                     
                     class="unknown")
unknown

#install.packages("dplyr")
#install.packages("descr")
#install.packages("ggplot2")

library(dplyr)
library(descr)
library(ggplot2)
ggplot(bind_rows(things, unknown)) + 
  geom_point(aes(x=sweetness, y=crunchiness, color=class),size=10) +
  geom_label(aes(x=sweetness, y=crunchiness, label=ingredient), hjust = 0, nudge_x = 0.25)+
  xlim(2,9) + ylim(3,8)

library(class) #contains knn function
pred <- knn(select(things, sweetness, crunchiness), 
            select(unknown,sweetness, crunchiness), things$class, k=1)
pred

unknown <- data.frame(ingredient =  c("tomato", "carrot"),
                      sweetness = c(6,4),
                      crunchiness = c(4,9),
                      class=c("unknown", "unknown"))
unknown

pred <- knn(select(things, sweetness, crunchiness), 
            select(unknown,sweetness, crunchiness), things$class, k=1)
pred

pred <- knn(select(things, sweetness, crunchiness), 
            select(unknown,sweetness, crunchiness), things$class, k=4)
pred

