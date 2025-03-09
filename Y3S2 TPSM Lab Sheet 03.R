###Lab Sheet 03###
#Tasks for User-Defined Functions#
#1. Write a function that prints "Hello, R!" to the console.
#Function definition
hello_function = function(){
  print("Hello, R!")
}

#Function call
hello_function()

#2. Create a function that takes two numbers as input and returns their product.
#Function definition

multiplt_numbers = function(a,b){
  return(a * b)
}

#Function call
result = multiplt_numbers(23,3)

print(result)

#3. Write a function that calculates the square of a number and adds 10 to the result
#Function definition
calculate_square = function(x){
  return((x^2)+10)
}

#Function call
square_result = calculate_square(6)

print(square_result)

calculate_sum_of_two_squares = function(x,y){
  return((x^2 + y^2))
}

sum_of_two_squares_result = calculate_sum_of_two_squares(4,3)

print(sum_of_two_squares_result)

#Tasks for Anonymous Functions#
#4. Create an anonymous function to calculate the cube of a number and call it immediately.
#Anonymous function
print((function(x)x^3)(3))
print((function(x)sqrt(x))(420))

#5.Use an anonymous function with sapply() to double the values in a numeric vector
#Numeric vector
values = c(5,10,15,20)

# Using sapply with an anonymous function
result = sapply(values, function(x)x*2)
result_2 = sapply(values, function(x)x^2)


print(result)
print(result_2)

#6. Apply an anonymous function to calculate the sum of squares for each row in a data frame.
#Data frame
data_frame = data.frame(A = c(2,4,6), B = c(3,5,7))
print(data_frame)
#Using apply with an anonymous function
row_sums = apply(data_frame, 1, function(x)sum(x^2)) # 1 stands for row-wise operations
col_sums = apply(data_frame, 2, function(x)sum(x^2)) # 2 stands for col-wise operations

print(row_sums)
print(col_sums)

#Advanced Task with Functions#
#7.Create a function that computes the perimeter of a rectangle by calling another function to calculate its area. The perimeter function should take the length and width as inputs
#Function Definition

#Area function
calculate_area = function(length, width){
  return(length *width)
}

calculate_area_of_circle = function(radius){
  circle_area = 3.14 * (radius^2)
  return(circle_area)
}
#Perimeter function
calculate_perimeter = function(length, width){
  area = calculate_area(length, width)
  return(2 * (length + width))
}

perimeter_result = calculate_perimeter(5,3)
print(perimeter_result)

print(calculate_area_of_circle(3))

calculate_Potential_energy = function(height,mass){
   gravity = 9.8 
   pt_energy = mass * gravity * height
   return(pt_energy)
}

print(calculate_Potential_energy(8000,77))

#Create a function to determine whether a number is even or odd
even_odd_detector = function(x){
  if(x %% 2 == 0){
    print("Even")
  }else{
    print("Odd")
  }
}

even_odd_detector(69)
even_odd_detector(420)