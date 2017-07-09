## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invs <- NULL
        ## set the original inverse value
        
        set <- function(y){
                x <<- y
                invs <<- NULL
        }
        ## set the matrix
        
        get <- function() {
                x
        }
        ## get the matrix
        
        setinverse <- function(inverse){
                invs <<- inverse
        }
        ## set the inverse of the matrix
        
        getinverse <- function(){
                invs
        }
        ## get the inverse of the matrix
        
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        ## return the results

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invs <- x$getinverse()
        ## get the inverse matrix
        
        if(!is.null(invs)){
                message("getting cached data")
                return(invs)
        }
        ## return the inverse matrix if it has been already set
        
        data <- x$get() ## get the matrix
        invs <- solve(data, ...) ## calculate the inverse matrix
        x$setinverse(invs) ## set the inverse to "invs"
        invs
        ## return the inverse matrix if it is not already set
}
