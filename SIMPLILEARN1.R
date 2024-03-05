library(datasets)

head(iris)

colnames(iris)

glimpse(iris)

summary(iris)

data("AirPassengers")

data("iris")

str(iris)
##if,else statements

score <- 90
if (score > 80){
  print("it's an A")
  
} else{
  print("it's not an A")
}

#ELSE IF
score <- 87

if (score > 80){
  print(" it'S an A")
} else if(score > 60 & score < 80){
  print("it's  a B")
} else if(score < 60 & score > 55){
  print("it's a C")
} else{
  print(" it's an F")
}
plot(iris)
plot(AirPassengers)
data("palmerpenguins")
installed.packages()

#built in functions

#10 generate 1000 random values from a normal distribution of mean 0 and 1
normalDist <- rnorm(1000,0,1)
mean(normalDist)
hist(normalDist)

#to get more info
?hist

# to get histogram with large number of interval breaks
hist(normalDist, breaks = 50)

#functions
status<-function(marks)
{
  result ="not passed"
  if(marks>50) result ="passed"
  message("your result is"," ",result)
}
status(60)
status(30)

#function2
status<-function(age)
{
  agegrp ="not eligible"
  vote="not valid"
  if(age>=18)
  {
    agegrp ="adult"
    vote ="yes"
  }
  message("your age group is ",agegrp)
  message("voting status is ",vote)
}
status(30)
status(12)

#square root function
sqr<-function(n)
{
  repeat
  {
    square=n*n
    message("The square is ", square)
    if(square>500) break
    n=n+1
  }
  return(n)
}
sqr(4)

#built in functions
#sequence of numbers
testnums <- seq(0,50, by =2)
testnums
class(testnums)
typeof(testnums)

v <- c(testnums)
v
#SORTING IN ASC AND DESC
sort(v)
sort(v, decreasing = TRUE)

#REVERSE
v2 <- c(testnums)
rev(v2)
