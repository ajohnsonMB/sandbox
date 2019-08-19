## Quiz

## 1. There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica?

## Load data set and ask for information
library(datasets)
data("iris")
?iris

## split data set to look at Sepal.Length
species <- split(iris, iris$Species, drop=FALSE)

## find mean of sepal.legth for virginica
lapply(species, function(x) colMeans(x [ ,c("Sepal.Length", "Sepal.Width")], na.rm=TRUE))

##6.588 - round up to 7


## 2. Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

## answer: apply(iris[ , 1:4], 2, mean)

## 3. How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.

## answer: tapply(mtcars$cly, mtcars$mpg, mean)

## 4. Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

## create a split for cyliders
cylinders <- split(mtcars, mtcars$cyl, drop=FALSE)

## lapply to find the mean by cylinders
lapply (cylinders, function(x) colMeans(x[ ,c("hp","cyl")],na.rm=TRUE))

## subtract means
meanhpbycyl[["8"]][["hp"]] - meanhpbycyl[["4"]][["hp"]]
## answer is 126.5779 round up to 127

## 5. what happens when you next call the 'ls' function?
debug(ls)

## answer: You will be prompted to specify at which line of the function you would like to suspend execution and enter the browser.