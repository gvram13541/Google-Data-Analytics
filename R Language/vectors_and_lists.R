#VECTROS AND LISTS

# a vector is a sequence of elements that share the same data type. 
# vectors are the most common data structure in R. They are similar to arrays in C language.
# even when you create a single value in R it creates a vector.
# vectors are 2 types in R: 1. atomic vectors and 2. lists.
# there are six primary types of atomic vectors: they are
# logical, integer, double, character (which contains strings), complex, and raw.
# one way to create a vector is by using the c() function (called the “combine” function).
# the c() function in R combines multiple values into a vector.
# in R,this function is just the letter “c” followed by the values you want in your vector inside the parentheses, separated by a comma: c(x, y, z, …).
# to create a vector of integers using the c() function, you must place the letter "L" directly after each number.
# you can determine what type of vector you are working with by using the typeof() function.
# you can determine the length of an existing vector–meaning the number of elements it contains–by using the length() function.
# you can also check if a vector is a specific type by using an is function: is.logical(), is.double(), is.integer(), is.character(). 
# an atomic vector can only contain elements of the same type. If you want to store elements of different types in the same data structure, you can use a list.
# lists are different from atomic vectors because their elements can be of any type—like dates, data frames, vectors, matrices, and more. Lists can even contain other lists.
# we can create a list using list() fuction. eg: list(x, y, z, ...).
# if you want to find out what types of elements a list contains, you can use the str() function.
# 



v1 = c(1.2, 3.4, 4)
print(v1)

v2 = c(1L, 2L, 3L)
print(typeof(v2))

names(v2) = c("a", "b", "c")
print(v2)

print(length(v2))

print(str(v2))
print(str(v1))
str(v1)

list1 = list("Guna", FALSE, 4.5, 40)
print(str(list1))

list2 = list(name = "Guna", age = 21, weight = 50, male = TRUE)
print(list2)
print(str(list2))
print(typeof(list2))
print(length(list2))

list3 = list(list(1, 2, list(3, 4)))
print(list3)