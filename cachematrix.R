## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## This function creates a matrix 
## 1. sets the value of the matrix
## 2. gets the value of the matrix
## 3. sets the value of the inverse
## 4. gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  ## this sets inv to NULL as placeholder for future values
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  ## this defines a function to set the matrix, x, to a new matrix, y, and resets the inverse, inv, to NULL
  get <- function() x
  ## this returns the matrix, x
  setinverse <- function(inverse) inv <<- inverse
  ## sets the inverse, inv, to inverse
  getinverse <- function() inv
  ## returns the inverse, inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  ## this returns a vector containing all of the functions just defined
}







## Write a short comment describing this function

## this function calculates the inverse of the matrix created with the above function
## it first checks to see if the inverse has already been calculated
## If so, it gets the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the data and sets the value in the cache, via the setinverse function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) { 
    message("Getting cached matrix")
    return(inv)
  } 
  ## this condition checks if inv is already set (not equal to null)
  ## If so, a message is displayed and the set value is retrieved
  ## otherwise the following part of the function is used
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
  ## if inv is not yet set, data gets the previously defined vector
  ## the inverse is calculated by solve()
  ## and setinverse sets the inverse in inv
  }










