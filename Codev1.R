str(train)
train=read.csv("train.csv")

table(train$Survived)

prop.table(table(train$Survived))
test=read.csv("test.csv")
test$Survived <- rep(0,418)
newframe <- data.frame(PassengerID = test$PassengerId, Survived=test$Survived)
newframe
write.csv(newframe, file="Submitdata.csv", row.names=FALSE)      

prop.table(table(train$Sex, train$Survived ), 1) #This gives proportion with respect to the gender

test$Survived <- 0

test$Survived

test$Survived[test$Sex == 'female'] <- 1

test$Survived


newframe2 <- data.frame(PassengerID = test$PassengerId, Survived=test$Survived)
write.csv(newframe2, file="Submitdatav2.csv", row.names=FALSE)
newframe2

