## Put comments here that give an overall description of what your
## functions do
#These functions are used to save the square matrix on another environment, 
#calculate the inverse using solve() and retrieve the inversed matrix 
#once it was already calculated

## Write a short comment describing this function
#Saves the matrix on the cache and calculates the inverse, saving the inversed matrix
makeCacheMatrix <- function(z = matrix()) {
  t <- NULL
  set <- function(a) {
    z <<- a
    t <<- NULL
  }
  get <- function() z
  setval <- function(solve) t <<- solve
  getval <- function() t
  list(set = set, get = get,
       setval = setval,
       getval = getval)
}


## Write a short comment describing this function
#this function retrieves the inversed matrix from the other environment
cacheSolve <- function(z, ...) {
        ## Return a matrix that is the inverse of 'x'
  t <- z$getval()
  if(!is.null(t)) {
    message("getting cached data")
    return(t)
  }
  data <- z$get()
  t <- solve(data, ...)
  z$setval(t)
  t
}

