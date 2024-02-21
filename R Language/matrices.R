#MATRICES IN R

# a matrix is 2-D collection of data elements.
# matrices contains a single datatype elements.
# to create a matrix use matrix() function.
# the matrix() function has two main arguments that you enter in the parentheses.
# first, add a vector. The vector contains the values you want to place in the matrix. 
# next, add at least one matrix dimension. You can choose to specify the number of rows or the number of columns by using the code nrow = or ncol =. 
# when you run the function, R infers the number of rows automatically.

M = matrix(c(3:8), nrow = 2)
print(M)

A = matrix(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9), nrow = 3)
A

B = matrix(c(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9)), ncol = 3)
B