## Put comments here that give an overall description of what your
## functions do
## This functions enables to optimize the calculation of matrix inversion by saving calculated values on the cache

## Write a short comment describing this function
## makeCacheMatrix converts a matrix into a list containing functions to get and set the values of the matrix and the inverse
## Input: A invertible matrix
## Output: A list with the get, set, getinverse and  setinverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
