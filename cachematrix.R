##Following Programming 2 example:
## Setting value of matrix, getting value of matrix
## Setting value of mean, getting value of mean

makeCacheMatrix <- function(x = matrix()) {
    ## m will store cached inversed matrix 
    m <- NULL

    ## set matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
 
   }
    ## get matrix
    get <- function() x

    ## set inverse
    setinverse <- function(inverse) m <<- inverse 

    ## get inverse
    getinverse <- function() m 

    ## return matrix
    list(set=set, get=get, 
         setinverse=setinverse,
         getinverse=getinverse)

}


## Following example in Programming assignment 2
## This function computes inverse of matrix that is returned by makeCacheMatrix()
## If inverse was already calculated, function returns cached inverse

cacheSolve <- function(x, ...) {

##getting inversed matrix
m <- x$getinverse()
    ##if we didn't calculate, it's null at this point 
    if(!is.null(m)) {
        message("getting cached data.")
        return(m)
    }
## otherwise get matrix object
    data <- x$get()
## using solve() function to solve for it
    m <- solve(data, ...)
    x$setinverse(m)
    m 
}

##Testing functions
## testmatrix <- makeCacheMatrix(matrix(c(1,2,3,4,5,6,7,8,9,10), nrow=2, ncol=2))
## testmatrix$get()
## cacheSolve(testmatrix)
## testmatrix$getinverse()
## cacheSolve(testmatrix) 
