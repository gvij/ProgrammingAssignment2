
## This includes the unit test for the functions in cachematrix.R
## The matrix is first 

unittest = function(X){
    
    Y = makeCacheMatrix(X)
    
    start = Sys.time()
    cacheSolve(Y)
    elapsed1 = Sys.time() - start
    
    start = Sys.time()
    cacheSolve(Y)
    elapsed2 = (Sys.time() - start)
    
    cat ("first:  ", elapsed1, " second:",elapsed2)
    
}


## Unit test for cachematrix.R

r = 1000
set.seed(1)

v = rnorm(r*r)
X = matrix(v, r, r)

unittest(X)

