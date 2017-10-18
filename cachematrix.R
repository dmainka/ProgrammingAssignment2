## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix())
{
    cached_inv <- NULL
    
    set <- function(new_x)
    {
        x <<- new_x
        cached_inv <<- NULL
    }
    
    get <- function() { x }
    
    setinv <- function(inv) { cached_inv <<- inv }
    
    getinv <- function() { cached_inv }
    
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve 
## retrieves the inverse from the cache.

cacheSolve <- function(x, ...)
{
    ## Return a matrix that is the inverse of 'x'
    cached_inv <- x$getinv()
    if (!is.null(cached_inv))
    {
        message("getting cached data")
        return(cached_inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    
    inv
}

