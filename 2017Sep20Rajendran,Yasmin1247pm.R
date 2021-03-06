h <- "Hello World"
## Assign hello world to the variable h (classwork)
##Classwork: Consider the seq function. What does it do?
? seq()
# Answer: This tells us that this command is used to make sequences. 
# Create a numeric vector
v <- c(2,15,5,7)
# Create a naming vector
n <- c("two","fifteen","five","seven")
# Assign the names to the vector
names(v) <- n
v



##Next set of classwork questions below


##Classwork: 1) What happens if you type names(n) <- v?
names(n)<-v
## it says "Error: object 'v' not found" <----- Why?so then I ran it line by line and it just printed "names(n)<-v" (without the "").
##Classwork:2) What if the length of either vectors (names or values) are not the same?
v <- c(2,15,5,7)
n <- c("two","fifteen","five")
names(v)<-n
v
#Answer: it places "<NA>" where the missing name/value would be
#Classwork:3)What happens when you label 2 numbers with the same name?
n=3
n=2
n
#The last number that is assigned to the variable is the one that remains stored in the variable.





##Next set of classwork questions subsetting vectors
# Subsetting by index
v[c(1,2)]
# Subsetting by name
n <- c("two","fifteen","five","seven")
v <- c(2,15,5,7)
names(v)<-n
v
v[c("two","seven")]
# Subset all but some
v[-c(1,2)]
##Classwork:1) What happens if you swap the index?
v[c(2,1)]
##I got the second number in the set and then the first number in the set
##Classwork:2) What happens if you subset by the name not present, like v[c("two","three")]?
v[c("two","three")]
##It says NA where it does not know the number and <NA>
##Classwork: 3) Does the "subseting some"" operation work with names?
n <- c("two","fifteen","five","seven")
v <- c(2,15,5,7)
names(v)<-n
v
v[c("fifteen","five")]
##Yes it does it does work with names.
##Classwork/Homework: 4) What happens if the logical vector has less elements than the orginal vector v (remember recyling)?
n <- c("two","fifteen","five","seven")
v <- c(2,15,5,7)
names(v)<-n
v
v[c(TRUE,FALSE,TRUE)]
v[c(TRUE,TRUE,TRUE)]
## The logical vector prints the numbers in the same position as TRUE except if I put 3 TRUE statements it prints all of the 4 numbers.


#Topic: Missing Values
## Classwork/Homework: 1) Make a vector of length 5 with NA in them and test for missing values using the is.na() function.
VecY <- c(1,2,NA, 4, 5) 
is.na(VecY)
##is.na tells us were the NA is found by writing TRUE in the position that NA is found (in my case in the 3rd position)
## Classwork/Homework: 2) Extend this to a vector of length 5000. 
n<- c(seq(1,4999),NA)
n
## Answer: (Is Above)

#Topic: Character Vectors
##Classwork/Homework: Play with the sep argument to include other type of delimiters (like comma etc.) 
paste(c("Y","R"), "a,a", sep="")
paste(c("Y"), "a,Rajendran.!", sep="")
paste(c("Y"), "a,Rajendran.!", sep=",")
paste(c("Y"), "a,Rajendran.!", sep="!")


#Topic: Matrices
##Classwork/Homework:1) What happens if the number of rows/coumns are more than the generated numbers when using the function matrix()?
MatxOne <- matrix(1:6, nrow=12, byrow=TRUE)
MatxOne
MatxOne <- matrix(1:6, ncol=12, byrow=TRUE)
MatxOne
MatxOne <- matrix(1:6, nrow=2, byrow=TRUE)
MatxOne
MatxOne <- matrix(1:5, ncol=12, byrow=TRUE)
MatxOne
##Answer: Then numbers specified in the beginning are repeated though out the table to fill the number of rows/columns specified.
##Classwork/Homework:2) What happens in cbind() (and rbind()) if one of the columns (and rows) have more numbers than the other?
MatxTwoWithMoreNumbers <- matrix(1:12, nrow=2, byrow=TRUE)
MatxTwoWithMoreNumbers
cbind(MatxOne,MatxTwoWithMoreNumbers)
rbind(MatxOne,MatxTwoWithMoreNumbers)
##Answer: cbind needs the number of rows to match and rbind needs the number of columns to match if that does not happen then you get an error message.
##Classwork/Homework:3) Combine two matrices using cbind().
Matx_One <- matrix(1:5, nrow=10, byrow=TRUE)
Matx_One
Matx_Two <- matrix(1:10, nrow=10, byrow=TRUE)
Matx_Two
cbind(Matx_One,Matx_Two)
##Classwork/Homework:4)Can you "bind" two matrices of different data types? What happens when you do that?
Matx_Character_Type <- matrix(c("Y","A","S","M","I","N"), nrow = 6, byrow=TRUE)
Matx_Character_Type
Matx_Numbers_Type <-matrix(1:6, nrow=6, byrow=TRUE)
cbind(Matx_Character_Type,Matx_Numbers_Type)
#Answer: I believe I just did above?

#