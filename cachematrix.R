## Put comments here that give an overall description of what your
## functions do

## we made a function which creates and solves matrixes  through caching the results,
## so it needs less time to do this operation.

## This function creates matrix and inverses itself which is  the list of function to
#set the value of the matrix
#get the value of the matrix
#set the inverse value 
#get the inverse value 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(MatrixSolve) inv <<- MatrixSolve
        getInverse <- function() inv
        list(set = set, 
             get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}



## This function uses results of previous function, it checks the results first, then, 
#if there are some outcomes, it uses the cached matrix, solve it and prints

cacheSolve  <- function(x, ..) {
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        set_matrix <- x$get()
        inv <- solve(set_matrix)
        x$setInverse(inv)
        inv
}