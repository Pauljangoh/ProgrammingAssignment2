## Put comments here that give an overall description of what your
## functions do

## Creating a matrix

makeCacheMatrix <- function(x = matrix()) {
 s <- NULL
 set <- function(y){
   x <<- y
   s <<- NULL
 }
 get <- function() x
 setSolve <- function(solve) s <<- solve
 getSolve <- function() s 
 list(set=set, get=get, 
      setsolve=setsolve, 
      getsolve=getsolve)
}


## getting the inverse matrix

cacheSolve <- function(x, ...) {
 s <- x$getSolve()
 
 if(!is.null(s)) {
   message("getting cached data")
   return(s)
 }
 data <- x$get()
 
 s <- solve(data, ...)
 x$setSolve(s)
}
