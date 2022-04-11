setwd("/home/debjotyms/Documents/GitHub/ProjectTitanic")
train <- read.csv("/home/debjotyms/Documents/GitHub/ProjectTitanic/train.csv")
train
View(train)
test <- read.csv("/home/debjotyms/Documents/GitHub/ProjectTitanic/test.csv")
test
View(test)
table(train$Survived) 
table(train$Sex)
prop.table(table(train$Survived))
barplot(table(train$Survived), xlab="Survived", ylab="People", main="Train Data Survival")
test$Survived <- rep(0, 418)
prediction <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(prediction, file = "alldies.csv", row.names = FALSE)