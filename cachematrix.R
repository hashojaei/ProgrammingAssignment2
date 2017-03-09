## The main purpose of this assignment and function is about Lexical Scoping by creating two functions and calling the first function as required and defined. 

## The following function creates a special "matrix" object that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



## The following function computes the inverse of the special "matrix" created by  the makeCacheMatrix() function above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of ' inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        invx
        
}
