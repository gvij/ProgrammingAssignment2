## This file is the solution to the R-Programming Assignment 2: Lexical Scoping
## https://www.coursera.org/learn/r-programming/peer/tNy8H/programming-assignment-2-lexical-scoping


## The following function is the object that will store the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function (y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() x
    setinv <- function (inverse) inv <<- inverse
    getinv <- function () inv
    list (set = set, get = get, setinv = setinv, getinv = getinv)
   
    }


## This function calculates and stores the inverse of the matrix and returns the inverse 
## from storage on subsequent calls

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    
    if (!is.null(inv)) {
        print ("getting cached matrix")
        return (inv)
    }
    ## if the inverse wasn't already stored, compute the inverse
    data <- x$get()
    inv = solve (data)
    x$setinv(inv)
    
    return (inv)
}

