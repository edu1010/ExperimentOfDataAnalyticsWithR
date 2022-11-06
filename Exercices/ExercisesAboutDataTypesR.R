#1 Generating sequences=================================================

#Fill in the following vectors: v1: 1 2 3
v<-seq(1,3,1)
v
#v2: 1 2 3 1 2 3 1 2 3
v2 <- rep(v,3)
v2
#v3: 0 10 20 30 40 50 60 70 80 90 100
v3<-seq(0,100,10)
v3
#v4: 1000 900 800 700 600 500 400 300 200 100 0
v4<-seq(1000,0,-100)
v4
#v5: 1 1 1 1 1
v5 <-rep(1,5)
v5

#2 Performing vector-level computations with numeric vectors=================================================
#Compute the sum, mean, range, max and min of a vector that contains numbers from 1,500 until 500 step -2.
v6 <- 
#Sort in increasing order
#How many elements are there in the vector?
  
  
#  3 Arithmetics with numeric vector==============================================
#1.Create a vector from 1 to 20
#2.Substract -1 to all elements
#3.For each element, compute its square
  
  
#4 Arithmetics with several numeric vectors==========================================  

#1.Create a vector v1 from 0 to 20 and another v2 from -10 to +10
#2.Add +3 to all elements of vector v2.
#3.Generate a vector vsum that contains the sum of each element of the two vectors v1 and v2.
#4.Calculate the addition of all numbers of vector sum.
#5.Delete all negative numbers from vector vsum.

#5 Numeric vectors

#Let’s have a vector of values “quantity” and a vector of prices “price”.
#quantity: 20 3 4 5 6 7 8 5 2 12
#price: 2 4 5 63 40 21 12 6 7 4
#Each position of the vector quantity refers to the quantity of a product sold at the corresponding price of the other vector. Compute the final amount



#6 Numeric vectors and logical vectors==================================================
#
#Given these two vectors:
#  x: 3 4 6 -5 1 3 9 10 -1 0 -4
#y: -4 4 6 5 1 3 9 1 -10 5 14
#Perform the following computations:
#  1. How many elements of vector x are positive
#2
#2. Which elements of vector x are greater than the elements of vector y
#3. Delete from vector x the elements that are equal to the elements of the same position in y


#7 Factors==============================================
#Given the following vector which belongs to the level of studies of 20 people:
#studies <- c(“n”, “p”, “s”, “p”, “s”, “t”, “o”, “s”, “o” , “p”, “p”,“s”, “s”,“t”,“p”,“t”,“o”,“n”,“p”,“o”)
#Compute how many different types of education there are
#To make it more understandable, change the level values by the following names
#n : none
#p : primary
#s : secondary
#t : tertiary
#o : other
#Print how many people there are for each type of education
#Tip: once you initialize the variable studies, convert it to factor to better solve the exercise.


#8 Matrices=======================================
#1. Generate a matrix of 10 rows and 6 columns, where the values of each colum are multiples of the column
#index. Like this one:
#v1 v2 v3 v4 v5 v6
#[1,] 1 2 3 4 5 6
#[2,] 2 4 6 8 10 12
#[3,] 3 6 9 12 15 18
#[4,] 4 8 12 16 20 24
#[5,] 5 10 15 20 25 30
#[6,] 6 12 18 24 30 36
#[7,] 7 14 21 28 35 42
#[8,] 8 16 24 32 40 48
#[9,] 9 18 27 36 45 54
#[10,] 10 20 30 40 50 60
#2. Name each column as: M1, M2, . . . M6
#3. Delete the last two rows
#4. Change the sign of the colum 3
#5. Show the contents of colum M2
#3

#9 Data Frames (“advanced exercise”)===============================================================
#1. Read the file “bank.csv” and save the data in a data.frame
#http://archive.ics.uci.edu/ml/datasets/Bank+Marketing
#Verify that the info has been read correctly into a data.frame
#2. Compute the average age
#3. Compute how many different jobs there are in the sample
#4. Compute how many of each job
#5. Compute how many entrepreneurs there are
#6. Select the indivuals who are entrpreneurs and compute their average age
#7. Select those entepreneurs whose age is less than the average age of entrepreneurs. How many are there?
#8. What is the level of studies of these young entrepreneurs?
#9. Delete from bank all young entrepreneurs


#10 Summary Exercise====================================================================
#Given the following vector generated randomly:
#x<-round( rnorm(300, mean=25, sd=9) )
#x<-x[x>10]
#Imagine they belong to the ages of 300 individuals. Do the following computation:
#1. Copy the information in a file.
#2. Read the file and retrieve the ages again.
#3. How many individuals are there in the sample.
#4. Compute max,min, mean and median age.
#5. How many people of each age are there in the file?
#6. Compute the birth date of the players.
#7. Select all players that were born between 1980 and 2000, both included.
#8. Compute how many players are older than 30 years old and how many are younger than 20.
#9. Convert the values into a new vector, where you classify the players as:
#VY (very young): <20 years old
#Y (young), 20-34 years old
#A (adult): 35-49 years old
#OA (older adult): 50-65 years old
#O (old): >65 years old
#10. Compute how many players there are in each category


#11 More Practice with data frames=============================================================================
#Read the builtin dataset cars, which contains the following the following attributes:
#speed: numeric Speed (mph)
#4
#dist: numeric Stopping distance (ft)
#How many rows are there?
#How many columns?
#Change the names of the columns to “velocity”, “distance”
#Add two columns: “velocitat.kmh” and “dist.m” by computing the transformation to km/h and meters
#respectively.
#Compute the highest distance and to which speed corresponds.
#Compute for 0-10km/h the average distance. And also for the following intervals: 10km/h-20km/h, 20km/h-
#30km/h and 30km/h-40km/h.
#Plot distance against speed and see if a correlation can be observed

