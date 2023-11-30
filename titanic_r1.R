#"D:\PESMCOE\Data Science\Assign 3\Titanic.xlsx"
#install.packages("xlsx")
#install.packages("caret")
#install.packages("FSelector")
#install.packages("data.tree")

library(caret)
library(FSelector)
library(rpart)
library(rpart.plot)
library(dplyr)
library(xlsx)
library(data.tree)
library(caTools)

df <- read.xlsx("D:\\PESMCOE\\Data Science\\Assign 3\\Titanic.xlsx", sheetIndex=1)
df
summary(df)

df <- select(df, Survived, Class, Sex, Age)
df

df <- mutate(df, Survived = factor(Survived), Class = as.numeric(Class), Age =
               as.numeric(Age))
df <- na.omit(df)

set.seed(123)
sample = sample.split(df$Survived, SplitRatio = .70)
train = subset(df, sample==TRUE)
test = subset(df, sample == FALSE)
ctrl <- trainControl(method = 'cv', number=10)

fit.cv <- train(Survived ~ ., data = train, method = "rpart",
                trControl = ctrl,
                tuneLength = 30)
pred <- predict(fit.cv,test)
confusionMatrix(table(test[,"Survived"], pred))
print(fit.cv)
plot(fit.cv)
plot(fit.cv$finalModel)
text(fit.cv$finalModel)

library(rpart.plot)
rpart.plot(fit.cv$finalModel)
rpart.plot(fit.cv$finalModel, fallen.leaves = FALSE)