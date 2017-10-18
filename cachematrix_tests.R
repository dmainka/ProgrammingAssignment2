source('~/Documents/Education/Coursera/DataScience/Course2_RProgramming/Assignments/Week3/ProgrammingAssignment2/cachematrix.R')

m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
#m1

I2 <- matrix(c(1,0,0,1), nrow = 2, ncol = 2)
#I2

n1 <- matrix(c(6,2,8,4), nrow = 2, ncol = 2)
#n1

# Checks:
identical(I2, m1 %*% n1)
identical(I2, n1 %*% m1)

#solve(m1)
#solve(n1)

# So if you have programmed your functions 
# correctly (in the file cachematrix.R),
# (that, and your comments-explanation of how they work
# are what you are graded on)
# and sourced cachematrix.R so they are 
# available in your R session workspace, then doing
    
myMatrix_object <- makeCacheMatrix(m1)

# and then cacheSolve(myMatrix_object) should return exactly the matrix n1
identical(n1, cacheSolve(myMatrix_object))

# calling cacheSolve again should retrieve (not recalculate) n1
identical(n1, cacheSolve(myMatrix_object))

# you can use the set function to "put in" a new matrix. For example n2
n2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)
myMatrix_object$set(n2)

# and obtain its matrix inverse by
identical(solve(n2), cacheSolve(myMatrix_object))

# and obtain its cached matrix inverse by
identical(solve(n2), cacheSolve(myMatrix_object))