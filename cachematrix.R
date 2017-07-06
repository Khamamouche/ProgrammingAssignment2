## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The makecachematrix function sets the original matrix, gets the matrix, and then inverses the matrix.

makeCacheMatrix <- function(x = matrix()) {
    cache = NULL
    
    set = function(z) {
        x <<- z
        cache <<- NULL
    }
    get = function() x
    setinverse = function(inverse) inv <<- inverse
    getinverse = function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
## The cachesolve function outputs the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
cache = x$getInverse()
if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
    
}
data = x$get()
inverse = solve(data,...)
x$setinverse(inverse)

return(inverse)

}
