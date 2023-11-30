#1
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)

#2
list_data <- list(c("Red","Green","Black"), matrix(c(1,3,5,7,9,11), nrow = 2),
                  list("Python", "PHP", "Java"))
print("List:")
print(list_data)
names(list_data) = c("Color", "Odd numbers", "Language(s)")
print("List with column names:")
print(list_data)
print('1st element:')
print(list_data[1])
print('2nd element:')
print(list_data[2])
##########################

#3
a1 = c(20, 22, 24, 26)
a2 = c(21, 23, 25, 27, 29)
array1 = array(c(a1, a2),dim = c(3,3,2))
print(array1)
#######################

#4
name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
print("Folowing Data is input: ")
print(name)
print(score)
print(attempts)
print(qualify)

myDataFrame = data.frame(name, score, attempts, qualify)
print("Below is data frame")
print(myDataFrame)

#######################
#5th
# Sample data containing height and weight of women
women_data <- data.frame(
  Height = c(160, 165, 170, 175, 162, 168, 155, 160, 172, 178),
  Weight = c(55, 60, 65, 70, 58, 63, 52, 56, 68, 75)
)
# Define height categories (bins)
height_breaks <- c(150, 160, 170, 180)
# Create a factor variable for height based on the defined breaks
women_data$Height_Category <- cut(women_data$Height, breaks = height_breaks, labels = c("Short", "Average", "Tall"))

# Display the updated data frame with the height category
print(women_data)
##########################

#5th one more way
data = women
print("Women data set of height and weights:")
print(data)
height_f = cut(women$height,3)
print("Factor corresponding to height:")
print(table(height_f))

##########################

#6th 
data <- c(7, 9, 12, 2, 4, 13)
A <- matrix(data, nrow = 2, ncol = 3, byrow = TRUE)

data <- c(1, 7, 12, 19, 2, 8, 13,20, 3, 9, 14,21)
B <- matrix(data, nrow = 3, ncol = 4, byrow = TRUE)


AB <- A %*% B

print("Matrix A")
print(A)
print("Matrix B")
print(B)
print("Matrix Multiplication Result")
print(AB)

#######################

#7th
# Function to print the Fibonacci sequence using a loop
print_fibonacci <- function(n) {
  a <- 0
  b <- 1
  
  cat("Fibonacci Sequence:")
  for (i in 1:n) {
    cat(a, " ")
    next_num <- a + b
    a <- b
    b <- next_num
  }
}

number_of_terms <- 10
print_fibonacci(number_of_terms)
##############################

#8

# Read CSV into DataFrame
read_csv = read.csv("D:\\PESMCOE\\Data Science\\Assign 2\\username_onboarding.csv")
print(read_csv)

# Read excel into R
#install.packages("Rcpp")
#install.packages("readxl")
library(readxl)
read_exc = read_excel("D:\\PESMCOE\\Data Science\\Assign 2\\Financial_Sample.xlsx")
print(head(read_exc))

# Read text file into R
x<-read.csv("D:\\PESMCOE\\Data Science\\Assign 2\\products.txt")
print(x)
#################################

#9
# df <- data.frame(name = c("Jon", "Bill", "Maria", "Tom", "Emma"),
#                  age = c(23,41,32,55,40)
# )
# 
# write.csv(df, "C:\\Users\\Ron\\Desktop\\Test\\People.csv", row.names=FALSE)

#Exporting to csv file
data_info <- data.frame( product = c("computer", "monitor", "keyboard", "printer", "tablet"),
                         price = c(800, 450, 100, 150, 300))
write.csv(data_info,"D:\\PESMCOE\\Data Science\\Assign 2\\exp_products.csv", row.names = FALSE )

#Exporting to excel file
#install.packages("writexl")
library("writexl")
excel_info <- data.frame( Name = c("Jon", "Bill", "Maria", "Ben", "Tina"),
                          Age = c(23, 41, 32, 58, 26))
write_xlsx(excel_info,"D:\\PESMCOE\\Data Science\\Assign 2\\exp_info.xlsx" )

#Exporting to text file
text_info <- data.frame( Name = c("Jon", "Bill", "Maria", "Ben", "Tina"),
                          Age = c(23, 41, 32, 58, 26))
write.table(text_info,"D:\\PESMCOE\\Data Science\\Assign 2\\exp_text.txt", quote=FALSE)

#for google drive
#Exporting to google drive
#install.packages("googledrive")
library(googledrive)
write.csv(x=iris,file="iris.csv")
drive_upload(media="iris.csv",type='spreadsheet')
ss<- gs4_create(name="ds_assign_1",sheets="Sheet 1")
sheet_write(data=iris,ss=ss,sheet="Sheet 1")
drive_mv(file=ss,path="My Drive/Assignments/")
##################################

#10
vec1 = c(11, 13, 15, 17, 19)
vec2 = c(12, 14, 16, 18)
print("Vectors are: ")
print(vec1)
print(vec2)
varray = array(c(vec1,vec2), dim= c(3,3,2))
print("Array: ")
print(varray)
print("The second row of the second matrix of the array:")
print(varray[2,,2])
print("The element in the 3rd row and 3rd column of the 1st matrix:")
print(varray[3,3,1])
#######################################
#11
category <- 'A'
price <- 100
if (category =='A'){
  cat('A vat rate of 8% is applied.','The total price is',price *1.08)  
} else if (category =='B'){
  cat('A vat rate of 10% is applied.','The total price is',price *1.10)  
} else {
  cat('A vat rate of 20% is applied.','The total price is',price *1.20)  
}

##############################
#12
amt <- 500

if (amt>=0 && amt<=100){
  print("5% discount on Handloom Items")
  print(amt * 1.05 )
}else if( amt<=200 && amt >=101){
  print("101-200")
  print((amt *1.05) + (amt * 1.75))
}else if(amt>=201 && amt<=300){
  print("201-300")
  print((amt *1.75) + (amt * 1.10))
}else if(amt>=301){
  print("301 above")
  print((amt *1.10) + (amt * 1.15))
}else{
  print("Invalid amount")
}

######################################
# Function to compute net amount
netAmount <- function(item_type, purchase_amount) {
  mill_discount <- 0
  handloom_discount <- 0
  
  if (purchase_amount <= 100) {
    mill_discount <- 0.05
  } else if (purchase_amount <= 200) {
    mill_discount <- 0.05
    handloom_discount <- 0.075
  } else if (purchase_amount <= 300) {
    mill_discount <- 0.075
    handloom_discount <- 0.10
  } else {
    mill_discount <- 0.10
    handloom_discount <- 0.15
  }
  
  switch(item_type,
         "Mill Cloth" = purchase_amount * (1 - mill_discount),
         "Handloom Items" = purchase_amount * (1 - handloom_discount),
         "Both" = purchase_amount * (1 - mill_discount - handloom_discount),
         "Invalid Item Type" = "Invalid item type")
}


item_type <- "Mill Cloth"
purchase_amount <- 250
net_amount <- netAmount(item_type, purchase_amount)

cat("Item Type:", item_type, "\n")
cat("Purchase Amount:", purchase_amount, "\n")
cat("Net Amount Paid:", net_amount, "\n")



###########################################

#13
# Function to calculate the sum of the series 1^2 + 2^2 + 3^2 + ... + n^2
sum_of_squares <- function(n) {
  # Initialize the sum to 0
  total_sum <- 0
  
  # Iterate from 1 to n and add the squares to the sum
  for (i in 1:n) {
    total_sum <- total_sum + i^2
  }
  
  # Return the final sum
  return(total_sum)
}

# Specify the value of n
n <- 5  # You can change this to any positive integer

# Call the function to calculate the sum of the series
result <- sum_of_squares(n)

# Print the result
cat("The sum of the series 1^2 + 2^2 + 3^2 + ... +", n, "^2 is:", result, "\n")

##############################


#14
for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}

##################################

#15
# Function to find the sum of digits of a number
sum_of_digits <- function(number) {
  # Initialize a variable to store the sum
  sum_result <- 0
  
  # Convert the number to a character to iterate through its digits
  number_str <- as.character(number)
  
  # Iterate through each digit and add it to the sum
  for (digit in number_str) {
    sum_result <- sum_result + as.numeric(digit)
  }
  
  # Return the final sum
  return(sum_result)
}

# Input a number
number <- 12345

# Call the function to find the sum of digits
result <- sum_of_digits(number)

# Print the result
cat("The sum of digits of", number, "is:", result, "\n")

#
# Function to find the sum of digits of a number
sum_of_digits <- function(number) {
  # Initialize a variable to store the sum
  sum_result <- 0
  
  # Convert the number to a character to iterate through its digits
  number_str <- as.character(number)
  
  # Iterate through each digit and add it to the sum
  for (digit in number_str) {
    sum_result <- sum_result + as.numeric(digit)
  }
  
  # Return the final sum
  return(sum_result)
}

# Input a number
number <- 12345

# Call the function to find the sum of digits
result <- sum_of_digits(number)

# Print the result
cat("The sum of digits of", number, "is:", result, "\n")
####################################333

# Function to find the sum of digits of a number and reduce it to one digit
sum_of_digits_reduce <- function(number) {
  while (number >= 10) {
    # Initialize the sum to 0 for each iteration
    sum_result <- 0
    
    # Extract and sum the digits
    while (number > 0) {
      sum_result <- sum_result + number %% 10  # Get the last digit
      number <- floor(number / 10)             # Remove the last digit
    }
    
    # Update the number with the sum
    number <- sum_result
  }
  
  # Return the final reduced digit
  return(number)
}

# Input a number
number <- 98765

# Call the function to find the sum of digits and reduce it to one digit
result <- sum_of_digits_reduce(number)

# Print the result
cat("The sum of digits of", number, "reduced to one digit is:", result, "\n")




