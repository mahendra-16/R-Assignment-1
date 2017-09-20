
titanic_analysis <- read.csv("D:/GitHub-2/Dataset/titanic.csv", header = TRUE, sep = ",")
View(titanic_analysis)

table(titanic_analysis$Survived)
table(titanic_analysis$Sex)
survived <- table(titanic_analysis$Survived, titanic_analysis$Sex)
survived
barplot(survived, col = rainbow(2), beside = T, legend=T, main="Graph of people  who Survived \n \t And Not-survived in Titanic Disaster", xlab = "Gender", ylab = "Number of Death")

tt <- table(titanic_analysis$Pclass, titanic_analysis$Survived)
barplot(tt, col=rainbow(3), beside = T, legend = T)


male_age <- titanic_analysis$Age[titanic_analysis$Sex == 'male']
female_age <- titanic_analysis$Age[titanic_analysis$Sex == 'female']
hist(male_age, xlab = 'Age', main="Age Group of Male Titanic Passenger")
hist(female_age, xlab = "Age", main = "Age Group of FeMale Titanic Passenger")
summary(male_age)
summary(female_age)



























