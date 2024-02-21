#FILES IN R

# Use the dir.create function to create a new folder, or directory, to hold your files. 
# Place the name of the folder in the parentheses of the function.
dir.create("Newtest")

# Use the file.create() function to create a blank file.
# Place the name and the type of the file in the parentheses of the function. 
# Your file types will usually be something like .txt, .docx, or .csv. 
file.create("test.txt")

# Copying a file can be done using the file.copy() function. 
# In the parentheses, add the name of the file to be copied. Then, type a comma, and add the name of the destination folder that you want to copy the file to.
file.copy()

# You can delete R files using the unlink() function. 
# Enter the file’s name in the parentheses of the function
unlink("test.txt")
