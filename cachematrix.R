##The makeCacheMatrix function will create a matrix (x) that caches its inverse
##The cacheSolve function will return the inverse of the above function and will 
##check if the matrix is already cached , if not it will computes the inverse


# Create the matrix and create the four functions, hereunder
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y 
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set=set, get=get,
             setinverse=setinverse, 
             getinverse=getinverse)
}

## cachSolve will verify if 'i' already contains data, else it will retrieve the data and print it

cacheSolve <- function(x, ...) {
        i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)
        i
}