###TUTORIAL 2###
#Question 1
data <- c(2, 6, 7, 8, 8, 11, 12, 13, 14, 15, 22, 23)
quartiles <- quantile(data, probs = c(0.25, 0.5, 0.75))

Q1 <- quartiles[1]
Q2 <- quartiles[2]
Q3 <- quartiles[3]

IQR <- Q3 - Q1

lowerBound <- Q1 - 1.5 * IQR
upperBound <- Q3 + 1.5 * IQR

outliers <- data[data < lowerBound | data >upperBound]

cat("Q1:", Q1 ,"\nQ2:", Q2 ,"\nQ3", Q3 ,"\n")
cat("Lower Bound:", lowerBound , "\nUpperBound:", upperBound)

boxplot(data, main="Box-and-whisker plot", col = "skyblue", horizontal = TRUE)

#Question 2
question2Dataset1 <- c(3, 7, 8, 5, 12, 14, 21, 13, 18)
question2Dataset2 <- c(3, 7, 8, 5, 12, 14, 21, 15, 18, 14)

data_list <- list("Data set 1" = question2Dataset1, "Data set 2" = question2Dataset2)

boxplot(data_list, main="Box-and-whisker Plots for two datasets", col = c("skyblue","red"), ylab = "Data sets", xlab = "Values", horizontal = TRUE)

#Question 3
question3Dataset <- c(19,26,25,37,32,28,22,23,29,34,39,31)

question3Quartiles <- quantile(question3Dataset, probs = c(0.25, 0.5, 0.75))

question3Q1 <- question3Quartiles[1]
question3Q1
question3Q2 <- question3Quartiles[2]
question3Q2
question3Q3 <- question3Quartiles[3]
question3Q3

question3IQR <- question3Q3 - question3Q1
question3IQR

question3LB <- question3Q1 - 1.5 * question3IQR
question3LB 
question3UB <- question3Q3 + 1.5 * question3IQR
question3UB

question3Outliers <- question3Dataset[question3Dataset < question3LB | question3Dataset > question3UB]
question3Outliers

boxplot(question3Dataset, main="Amounts collected by the Salvation Army", col = "lavender", horizontal = TRUE)


#Question 5
question5dataset <- c(10.2, 14.1, 14.4, 14.4, 14.4, 14.5, 14.5, 14.6, 14.7, 14.7, 14.7, 14.9, 15.1, 15.9, 16.4)

question5Quartiles <- quantile(question5dataset, probs = c(0.25,0.5,0.75))

question5Q1 <- question5Quartiles[1]
question5Q1
question5Q2 <- question5Quartiles[2]
question5Q2
question5Q3 <- question5Quartiles[3]
question5Q3

question5IQR <- question5Q3 - question5Q1
question5IQR 

question5LB <- question5Q1 - 1.5 * question5IQR
question5LB
question5UB <- question5Q3 + 1.5 * question5IQR
question5UB

question5Outliers <- question5dataset[question5dataset < question5LB | question5dataset > question5UB]
question5Outliers

boxplot(question5dataset, main = "Box-and-whisker Plots for a dataset", col="cyan", horizontal = TRUE, pch = 19)

#Question 6
question6Dataset <- c(21, 23, 24, 25, 29, 33, 49 )

question6Quartiles <- quantile(question6Dataset, probs = c(0.25, 0.5, 0.75))

question6Q1 <- question6Quartiles[1]
question6Q2 <- question6Quartiles[2]
question6Q3 <- question6Quartiles[3]

question6IQR <- question6Q3 - question6Q1

question6LB <- question6Q1 - 1.5 * question6IQR
question6UB <- question6Q3 + 1.5 * question6IQR

question6Outliers <- question6Dataset[question6Dataset < question6LB | question6Dataset > question6UB]
question6Outliers

boxplot(question6Dataset, main="Box-and-whisker Plots for a dataset", col = "magenta", horizontal = TRUE, pch = 8)

#Question 7
question7Dataset <- c(77, 79, 80, 86, 87, 87, 94, 99)

boxplot(question7Dataset, main="Box-and-whisker Plots for a dataset", col = "blue", horizontal = TRUE, pch = 19)

#Question 8
question8Dataset <- c(3, 8, 10, 7, 5, 14, 2, 9, 8)

question8Mean <- mean(question8Dataset)
cat("Mean:", question8Mean, "\n")

question8Median <- median(question8Dataset)
cat("Median:", question8Median, "\n")

get_mode <- function(x){
  unique_values <- unique(x)
  freq <- tabulate(match(x, unique_values))
  mode <- unique_values[which.max(freq)]
  return(mode)
}

question8DatasetMode <- get_mode(question8Dataset)

#Question 9
question9Dataset <- c(26, 31, 21, 29, 32, 26, 25, 28)

question9Mean <- mean(question9Mean)
question9Median <- median(question9Median)
question9Mode <- get_mode(question9Dataset)

#Question 10
question10Dataset <- c(4.72, 4.71, 4.74, 4.73, 4.72, 4.71, 4.73, 4.72)

question10Mean <- mean(question10Dataset)
question10Median <- median(question10Dataset)
question10Mode <- get_mode(question10Dataset)


#Question 11
meanMassofBrick1 <- 24.2
numOfBrick1 <- 21

meanMassofBrick2 <- 23.6
numofBrick2 <- 29

totNumOfBricks <- numOfBrick1 + numofBrick2

meanMass <- ((meanMassofBrick1 * numOfBrick1) + (meanMassofBrick2 * numofBrick2))/ totNumOfBricks
cat("The mean mass of 50 bricks is:", meanMass,"kg\n")


#QUestion 12
question12Dataset <- c(35, 22, 25, 23, 28, 33, 30)

question12Mean <- mean(question10Dataset)

question12StandardDeviation <- sd(question12Dataset)

question12StandardDeviationRoundedTo3Places <- signif(question12StandardDeviation, 3)
cat("Standard Deviation:",question12StandardDeviationRoundedTo3Places,"\n")

#Question 13
question13Dataset <- c(34.3, 25.0, 30.4, 34.6, 29.6, 28.7, 33.4, 32.7, 29.0, 31.3)

question13Mean <- mean(question13Dataset)

question13StandardDeviation <- sd(question13Dataset)
cat("Standard Deviation:",question13StandardDeviation,"\n")

question13StandardDeviationRoundedTo3Places <- signif(question13StandardDeviation, 3)
cat("Standard Deviation Rounded to 3 places:",question13StandardDeviationRoundedTo3Places,"\n")

