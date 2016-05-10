train.raw=read.csv("train.csv", header=T)
df.train<-train.raw
test.raw=read.csv("test.csv", header=T)
df.test<-test.raw
require(Amelia)
missmap(df.train, main="Titanic Training Data - Missings Map", col=c("yellow","black"), legend=FALSE)

barplot(table(df.train$Survived), names.arg = c("Perished","Survived"), main="Survived (passenger fate)", col="black")
barplot(table(df.train$Pclass), names.arg=c("first", "second", "third"), main="Passenger class breakup")
barplot(table(df.train$Pclass),  main="Passenger class breakup")
barplot(table(df.train$Sex), main="sex")


hist(df.train$Age, xlab=NULL)


barplot(table(df.train$SibSp), main= "Siblings + Travelling passengers")

mosaicplot(df.train$Pclass ~ df.train$Survived, main="Passenger Fate by travelling class", shade=FALSE, color=TRUE, xlab="Pclass", ylab="Survived")

mosaicplot(df.train$Sex ~ df.train$Survived, main="Passenger Fate by Gender", shade=FALSE, color=TRUE, xlab="Gender", ylab="Survived")
