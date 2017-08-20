## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Cache Matrix set and get the value of a matrix
# Set and get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        invm <- NULL
        set<- funtcion(y){
                x <<-y
                invm <<- NULL
  }
        get <- function() x
        setinverse <- function(inverse) invm <<- inverse
        getinverse <- function() invm
        list(set=set, get=get,setinverse=setinverse,
             getinverse=getinverse)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        
        invm <- x$getinverse()
        #Check if the data is already cached, if so, skips the computation
        if(!is.null(invm)){
                  message("Getting cached data")
                  return(invm)
        }
        #If the data is not cached, it calculates the inverse
        data <- x$get()
        invm <- solve(data,...)
        #Sets the value in the cache
        x$setinverse(invm)
        invm
}
