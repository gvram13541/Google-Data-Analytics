#DATA FRAMES:

# data frame is a collection of columns similar to that of spreadsheets and SQL tables.
# each column has name that represents a variable and one observation per row.
# date frame helps summarize and organised data making easier to read.
# there are three main this to keep in mind with respect to data frames.They are:
# First, columns should be named. 
# second, data frames can include many different types of data, like numeric, logical, or character.
# finally, elements in the same column should be of the same type.
# to create a data frame manually we can use data.frame() function.
# the data.frame() function takes vectors as input.

name = c("guna", "shriyansh", "shreyansh")
age = c(19L, 22L, 21L)
df = data.frame(name, age)
print(df)
print(typeof(df)) # this gives list as output.
print(dim(df)) # to know the dimension of data frame.



### working with data frames using diamonds data set ###

library(ggplot2)
# data(diamonds)
View(diamonds)
head(diamonds)

# gives structure of data set
str(diamonds)
glimpse(diamonds)

# to know the column names of data frame
colnames(diamonds)
names(diamonds)


