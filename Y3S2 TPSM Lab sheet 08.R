####LAB SHEET 08####

#Step 1: Load the required Libraries
library(MASS)#If the libraries aren't there use tools to install library/package

#Step 2: Load the Data
#The Boston dataset includes housing data with variables like crime rate,
#tax, and median home value (medv).
data("Boston")

#Simple Linear Regression
"""
  Simple Linear Regression is used to understand the relationship between
one independent variable (lstat) and the dependent variable (medv).
"""

fit1 = lm(medv~lstat, data = Boston)
summary(fit1)
"""
What we did was =>
lm() creates a linear model.
medv ~ lstat means predicting medv using lstat.
summary(fit1) displays key metrics like coefficients and p-values
"""

#Multiple Linear Regression
fit2 = lm(medv~lstat+black, data = Boston)
summary(fit2)

fit3 = lm(medv~lstat+black+age, data = Boston)
summary(fit3)

#Using All variables
fit4 = lm(medv~.,data = Boston)
summary(fit4)

#Exculding Specific Variables
fit5 = lm(medv~.-indus,data = Boston)
summary(fit5)
"""
medv ~ . uses all variables except the target (medv).
- indus removes the indus variable.
"""


#Splitting Data for Training and Testing
trainID = sample(1:nrow(Boston), round(0.8 * nrow(Boston)))
train = Boston[trainID, ]
test = Boston[-trainID, ]
"""
sample() splits the data into 80% training and 20% testing datasets.
"""
#Model Training and Predictions
fitX = lm(medv ~ ., data = train)
summary(fitX)
y_pred = predict(fitX, test)
y_actual = test$medv
"""
predict() estimates values for the test dataset.
"""
#Model Evaluation
#Calculate errors to assess model performance
MSE = mean((y_actual - y_pred)^2)
RMSE = sqrt(MSE)
MSE
RMSE
"""
MSE (Mean Squared Error): Average of squared errors.
RMSE (Root Mean Squared Error): Square root of MSE.
"""


#Handling Dummy Varibales
library(pROC)#If the libraries aren't there use tools to install library/package
data("aSAH")


aSAH$outcome = factor(aSAH$outcome)
contrasts(aSAH$outcome)
aSAH$gender = factor(aSAH$gender)
contrasts(aSAH$gender)

fit = lm(ndka ~ s100b + outcome + gender, data = aSAH)
summary(fit)


####LAB SHEET 09####

#Assumption 1: Linearity
#The relationship between the independent(lstat) and dependent variables(medv) be linear
plot(Boston$lstat, Boston$medv, main = "Scatterplot of lstat vs medv", xlab = "lstat", ylab = "medv")
abline(lm(medv ~ lstat, data = Boston), col = "red")
"""
A scatterplot shows the relationship between the predictor (lstat) and
the response (medv).
The red line is the fitted regression line. The points should follow a
linear pattern.
"""

#Assumption 2: Independence
#The residuals (errors) should be independent
library(lmtest)#If the libraries aren't there use tools to install library/package
dwtest(lm(medv~lstat, data = Boston))
"""
The Durbin-Watson test checks for autocorrelation in the residuals
A test statistic close to 2 indicates no autocorrelation.
"""

#Assumption 3: Homoscedasticity
#The residuals should have constant variance
fit = lm(medv ~ lstat, data = Boston)
plot(fitted(fit), residuals(fit), main = "Residuals vs Fitted Values",xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "red")
"""
A residuals vs. fitted values plot is used to check homoscedasticity
The residuals should be randomly scattered around zero.
Patterns (e.g., funnel shapes) indicate heteroscedasticity
"""

#Assumption 4: Normality of Residuals
#The residuals should be normally distributed
qqnorm(residuals(fit), main = "Normal Q-Q Plot")
qqline(residuals(fit), col = "red")
"""
A Q-Q plot compares the distribution of residuals to a normal
distribution
The points should fall along the red reference line.
"""

#ADDITIONAL TEST
shapiro.test(residuals(fit))
#The Shapiro-Wilk test checks for normality. A p-value > 0.05 indicates normality

#Assumption 5: No Multicollinearity
#Independent variables should not be highly correlated
library(car)#If the libraries aren't there use tools to install library/package
vif(lm(medv ~ ., data = Boston))
"""
Variance Inflation Factor (VIF) checks multicollinearity
Variance Inflation Factor (VIF) checks multicollinearity
remove one of the variables(either tax or rad) and run 
"""

