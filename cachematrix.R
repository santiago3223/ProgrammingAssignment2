## Put comments here that give an overall description of what your
## functions do
## This functions enables to optimize the calculation of matrix inversion by saving calculated values on the cache

## Write a short comment describing this function
## makeCacheMatrix converts a matrix into a list containing functions to get and set the values of the matrix and the inverse.
## Input: A invertible matrix.
## Output: A list with the get, set, getinverse and  setinverse.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL #declare empty matrix
  set <- function(y) {
    x <<- y # save matrix into cache.
    m <<- NULL # declare empty matrix
  }
  get <- function() x # returns matrix.
  setinverse <- function(inverse) m <<- inverse # save inverse into cache.
  getinverse <- function() m # gets the inverse saved in cache.
  
  # creates the output list
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## cacheSolve returns the inverse of a matrix.
## Input: the result of the makeCacheMatrix function
## Output: a matrix inverse to the one passed to makeCacheMatrix.
cacheSolve <- function(x, ...) {
  m <- x$getinverse() # get the saved value from cache.
  if(!is.null(m)) { # if theres a saved value returns it.
    message("getting cached data")
    return(m)
  }
  data <- x$get() # gets the matrix .
  m <- solve(data) # inverts the matrix.
  x$setinverse(m, ...) # saves the inverse in cache.
  m
}
