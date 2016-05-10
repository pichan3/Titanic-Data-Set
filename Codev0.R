str(train)
train=read.csv("train.csv")
train
table(train$Survived)
prop.table(train$Survived)
prop.table(table(train$Survived))
test=read.csv("test.csv")
test$Survived <- rep(0,418)
newframe <- data.frame(PassengerID = test$PassengerId, Survived=test$Survived)
newframe
write.csv(newframe, file="Submitdata.csv", row.names=FALSE)      

newframe

summary(train$Sex)

summary(train$Survived)

prop.table(table(train$Sex, train$Survived)) #This give the proportions in colunnar form as a proportion of all people on board

prop.table(table(train$Survived, train$Sex))

prop.table(table(train$Sex, train$Survived ), 1) #This gives proportion with respect to the gender
prop.table(table(train$Sex, train$Survived ), 2) #This gives proportion with respect to the Survived 


test$Survived <- 0

test$Survived

test$Survived[test$Sex == 'female'] <- 1

test$Survived


newframe2 <- data.frame(PassengerID = test$PassengerId, Survived=test$Survived)
write.csv(newframe2, file="Submitdatav2.csv", row.names=FALSE)
newframe2

summary(train$Age)

newframe3= data.frame(PassengerID=train$PassengerId, Age=train$Age)
newframe3

train$Child <- 0
train$Child[train$Age <18] <- 1

newframe3= data.frame(PassengerID=train$PassengerId, Age=train$Age, Child=train$Child)
newframe3


aggregate(Survived~Child+Sex, data=train, FUN=sum)
  
aggregate(Survived~Child+Sex, data=train, FUN=length)

aggregate(Survived~Child+Sex, data=train, FUN=function(x) {sum(x)/length(x)})

neframe.Age
newframe3.Age
newframe3$Age

train$Fare2 <-  '30+'
train$Fare2[train$Fare<30 & train$Fare >=20] <- '20-30'
train$Fare2[train$Fare<20 & train$Fare >=10] <- '10-20'
train$Fare2[train$Fare<10] <- '<10'

aggregate(Survived~Fare2+Pclass+Sex, data=train, FUN=function(x) {sum(x)/length(x)})
aggregate(Survived~Fare2+Pclass+Sex, data=train, FUN=function(x) {sum(x)/length(x)}, length(x))


test$Survived[test$Sex=='female' & test$Pclass==3 & test$Fare>=20] <- 0

newframe2 <- data.frame(PassengerID = test$PassengerId, Survived=test$Survived)
write.csv(newframe2, file="Submitdatav2.csv", row.names=FALSE)


