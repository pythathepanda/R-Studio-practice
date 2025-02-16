###LAB SHEET 01###

##Part 01: Fundamentals##
"""
1. Printing and Comments
Let's start by printing some values and adding comments to explain the
code.
"""
print(200)

print("Dog")


"""
2. Mathematical Operations
Perform basic arithmetic operations such as addition, multiplication,
division, exponentiation, remainder, and integer division.
"""

#Arithmetic operations
print(1+2) #Addition
print(2*3) #Multiplication
print(4/2) #Division
print(4^2) #Exponentiation using ^
print(4**2) #Exponentiatiton using **
print(5%%2) #Remainder
print(5%/%2) #Integer division


"""
3. Relational Operations
Compare values using relational operators like greater than, less than,
equal to, and not equal to.
"""
# Relational operations
print(20 >10) #Greater than
print(30<20) #Less than
print(50 >= 30) #Greater than or equal to
print(10 == 10) #Equal
print(10 != 10) #Not Equal


"""
4. Logical Operations
Combine conditions using logical operators such as AND, OR, and NOT.
"""
#Logical operations
print((20 > 10) && (30 <= 50)) #AND operator
print((20 < 10) || (20 == 20)) #OR operator
print(!(10 == 10)) #NOT operator


"""
5. Variables
Define and manipulate variables, and check which variables exist in the
environment.
"""
#Assign values
x = 10
y = 20

#Addition
z = x + y

print(z)

#List variables
print(ls())

#Remove variable x
rm(x)

#Check if the variable has been removed
print(ls())

#Remove all variables
rm(list = ls())
print(ls())

"""
6. Mathematical Functions
Explore built-in mathematical functions like summation, absolute value,
square root, logarithms, exponentials, and rounding.
"""
#Mathmatical functions
print(sum(10,20))
print(abs(-20))
print(sqrt(25))
print(log(10)) #Natural log
print(exp(5)) #Exponential
print(round(3.14196579))
print(round(10.356745, 2)) #@ means round up to 2 decimal points

"""
7. Primitive Data Types
Explore different data types in R, such as numeric, integer, character,
logical, and complex. Verify their types using the class() function
"""
#Data types
num = 1.23
int = 12L
char = "Cat"
log = TRUE
comp = 23 + 3i

#Check types
print(class(num))
print(class(int))
print(class(char))
print(class(log))
print(class(comp))


"""
8. Casting Data Types
Convert between data types, such as numeric to character, character to
numeric, and logical to numeric.
"""
#Casting data types
x = 12
y = as.character(x)
print(y)
print(class(x))
print(class(y))

x = "12"
y = as.numeric(x)
print(y)
print(class(y))

x = TRUE
z = FALSE
a = as.numeric(z)
y = as.numeric(x)
print(y)
print(a)
print(class(a))
print(class(y))


"""
9. User Input
Accept user input and process it, such as converting age input from
character to numeric.
"""
#User input
name = readline(prompt = "Enter your name: ") #RUN this before the next lines
age = readline(prompt = "Enter your age: ") #RUN this before the next lines

print(name)
print(age)

#Convert age to numeric
age = as.numeric(age)
print(age)

##Part 02: Compound Data Structures##
"""
1. Vectors
  Creating Vectors
    1. Create numeric, character, and mixed vectors using c(). Observe
    coercion when mixing types.
    2. Generate sequences using 1:10, seq(), and rep().
"""
#Examples of vector creation
# c means combine function
numeric_vector = c(12,22,23,34,35)
character_vector = c("Dog","Cat","Rat")
mixed_vector = c(12,"Man",23)
sequence_vector = seq(10, 50, by = 5)
repeated_vector = rep("Dog", 5)

#Indexing and Slicing
#Access speciic element
#Indexing and slicing
vector = c(23,33,34,32,45,50,65)
element = vector[1]
slice = vector[1:3]
boolean_masked = vector[vector > 40]

#Element-Wise Operations
#Perform arithmetic and comparisons on vectors
#Element-wise operations
vector1 = c(2,3,4)
vector2 = c(3,4,5)

sum_vector = vector1 + vector2
comparison = vector1 > 2

#Summary Functions
#Explore functions like sum(), mean(), sd(), and range()

vector = c(2,3,4,5)
print(sum(vector))
print(mean(vector))
print(sd(vector))
print(range(vector))

#Other Vector Functions
#Use append(), sort(), unique(), and more for practical operations
vector = c(20,10,20,30)
appended_vector = append(vector, 40)
sorted_vector = sort(vector)
unique_values = unique(vector)
sampled_values = sample(vector, 2) #This takes 2 random values

##2. Matrices##
"""
Creating Matrices
  1. Create matrices using matrix(). EXplore row-wise and column-wise filling
"""
#Matrix creation
matrix1 = matrix(1:6, nrow = 3, ncol = 2) #(1 4 2 5 3 6)
print(matrix1)
matrix2 = matrix(1:6, nrow = 3, ncol = 2, byrow = TRUE) #(1 2 3 4 5 6)
print(matrix2)

#Matrix properties
#Determine dimensions, structure, and summaries.
print(dim(matrix1))
print(summary(matrix1)) #This will give you a columnwise summary

print(dim(matrix2))
print(summary(matrix2))

#Merging Matrices
#Combine matrices using cbind() and rbind()
matrix1 = matrix(1:4, nrow = 2)
print(matrix1)
matrix2 = matrix(5:8, nrow = 2)
print(matrix2)

horizontal_merge = cbind(matrix1, matrix2)
print(horizontal_merge)
vertical_merge = rbind(matrix1, matrix2)
print(vertical_merge)

#Matrix Indexing and Operations
#Access rows, columns, and perform matrix arithmetic.
# Matrix indexing
matrix1 = matrix(1:9, nrow = 3)
print(matrix1)
print(matrix1[1,]) #Prints the 1st row
print(matrix1[,2]) #Prints the 2nd col
print(matrix1[1:2,2:3])
print(matrix1[2:3,1:2])
print(matrix1[1:3,1:3])
print(matrix1[1:2,1:2])

# Matrix operations
matrix1 = matrix(c(1,2,3,4), nrow = 2)
print(matrix1)
matrix2 = matrix(c(5,6,7,8), nrow = 2)
print(matrix2)

matrix_addition = matrix1 + matrix2
print(matrix_addition)

matrix_subtraction = matrix1 - matrix2
print(matrix_subtraction)

matrix_multiplication =matrix1 * matrix2 #Elementwise
print(matrix_multiplication)

matrix_dot_product = matrix1 %*% matrix2 #Matrix multiplication
print(matrix_dot_product)

matrix_transpose = t(matrix1)
print(matrix_transpose)

#Advanced Matrix Operations
#Calculate determinants, inverse, and diagonal elements
# Determinants and inverse

matrix3 = matrix(c(4,7,2,6),nrow = 2)
matrix3
det_value = det(matrix3)
det_value

inverse_matrix = solve(matrix3)
inverse_matrix

#Diagonal elements
diag_elements = diag(matrix3)
print(diag_elements)

###3.Factors###
"""
Unordered Factors
Convert categorical data into factors
"""
#Unordered factors
gender = factor(c("Male","Female","Male"))
gender

"""
Ordered Factors
Specify an order for factor levels.
"""
#Ordered factors
levels = factor(c("Low","Medium","High"),levels = c("Low","Medium","High"),ordered = TRUE)
print(levels)


###4.Lists###
"""
Creating Lists
Combine multiple data types into a list
"""
#List creation
my_list = list(
  vector = c(1,2,3),
  matrix = matrix(1:4, nrow = 2),
  char = "Hello"
)
print(my_list)
print(my_list[3])

###5.Data Frames###
"""
Manual Creation
Create data frames from vectors.
"""
#Data frame creation
name = c("Kane","Jane","David")
age = c(23,33,34)
marks = c(89,78,88)
df = data.frame(name, age, marks)
print(df)

#Accessing Columns
#Access columns using [] and $
print(df$name)
print(df["name"])

#Indexing and Slicing
#Access specific rows and columns
print(df[1,1])
print(df[1:2,])

#Modifying Data Frames
#Change elements, add and remove columns
#Modifying data frames
df$grade = ifelse(df$marks > 80, "A","B")
print(df)

#Boolean Masking
#Filter rows based on conditions
filtered_df = df[df$marks > 80,]
filtered_df

#Data Frame Functions
#Exploring head(), tail(), dim(), nrow(), ncol(), colnames(), rownames(), rowSums(), colSums(), rowMeans(), colMeans(), summary(), and str().
print(head(df))
print(tail(df))
print(dim(df))
print(nrow(df))
print(ncol(df))
print(colnames(df))
print(rownames(df))
print(rowSums(df[, c("age", "marks")]))
print(colSums(df[, c("age", "marks")]))
print(rowMeans(df[, c("age", "marks")]))
print(colMeans(df[, c("age", "marks")]))
print(summary(df))
print(str(df))
