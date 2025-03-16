#To install a library
install.packages("dplyr") #Data manipulation
install.packages("ggplot2") #data visualization

library(dplyr)
library(ggplot2)

#To check available datasets
data()

#To load a dataset
data("iris")
data('cars')

#To check the structure of the dataset
str(iris) #NOTE str is not for string but Structure
str(cars)

#We will be using iris dataset cuz f it
head(iris) #View the first few rows

#Summary statistics
summary(iris)

#Mean of each numerical column
sapply(iris[, 1:4],mean) #The empty part before the comma iris[, ] means you want all rows from the dataset.
                         #The part after the comma 1:4 specifies that you want columns 1 through 4.

#SD of each numerical column
sapply(iris[, 1:4],sd)

#Range of each numerical column
sapply(iris[, 1:4],range)

"""
     Sepal.Length Sepal.Width Petal.Length
[1,]          4.3         2.0          1.0
[2,]          7.9         4.4          6.9
     Petal.Width
[1,]         0.1
[2,]         2.5 

[1,] = first row
[2,] = second row
"""

#Creating bar chart
species_count = table(iris$Species)
barplot(species_count, main = "Count of Species", col = "lightblue")
#The main argument specifies the title of the bar plot.


#Creating pie chart
pie(species_count, main = "Proportion of Species", col = rainbow(3))

#Creating a histogram
hist(iris$Sepal.Length, main = "Historgram of Sepal Length", col = "lightgreen", xlab = "Sepal Length", ylab = "Frequency" )

#creating Box plots
boxplot(iris$Sepal.Length, main = "Box plot of Sepal length", col = "darkred", horizontal =  TRUE)

#Multiple Bar Charts
#Create a grouped bar chart to compare Sepal Length across species.
sepal_mean = tapply(iris$Sepal.Length, iris$Species, mean)

barplot(sepal_mean, main = "Mean Sepal Length by Species", col = c("red","green","blue"), beside = TRUE)

#Side by Side box plots
#Create side-by-side box plots for Sepal Length across species.
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal Length by Species", col = c("red","green","blue"))

#Scatter plot
plot(iris$Sepal.Length, iris$Petal.Length, main = "Scatter Plot: Sepal vs Petal Length", xlab = "Sepal Length", ylab = "Petal Length", col = iris$Species, pch = 19)
#The reason you are seeing 3 different colors in your scatter plot is because of how the col = iris$Species argument works in your plot command.

"""
Create a function called random_word_frequency that:
Generates a random sample of words from a predefined vector with a given sample size with the replications

count frequency of each word

extract the labels from the frquency table

use atleast one of names, sample and table
