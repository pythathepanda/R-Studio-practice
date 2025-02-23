#To check working directory
dir()

#To set working directory
setwd("C:\\Users\\IT22350664\\Desktop")
dir()
data(iris)

ndata = read.csv("C://Users//IT22350664//Desktop//TPSM//iris.csv")

#To see the first 6 values of the data set
head(ndata)

#To see the last 6 values of the data set
tail(ndata)

#To find the dimensions of the data set
dim(ndata)

#To find the column names of the data set
colnames(ndata)

#To create a new variable and add it to the data set
#i.e Avg of the length
ndata$Avglen = (ndata$Sepal.Length+ndata$Petal.Length)/2

#Avg of the width
ndata$Avgwid = (ndata$Sepal.Width + ndata$Petal.Width) / 2

#To extract records with the sepal length that is greater than 5 (Sepal.length > 5)
ndata[ndata$Sepal.Length>=5, ]

#To extract records with the sepal length that is greater than 5 and Species = "Setosa" (Sepal.length > 5)
ndata[ndata$Sepal.Length>=5 & ndata$Species == "setosa" ]
ndata[2,]
ndata[,2]
