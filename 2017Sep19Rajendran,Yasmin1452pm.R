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
##Classwork/Homework: What happens if the logical vector has less elements than the orginal vector v (remember recyling)?
n <- c("two","fifteen","five","seven")
v <- c(2,15,5,7)
names(v)<-n
v
