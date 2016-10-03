## Put comments here that give an overall description of what your
## functions do

## Assignment: Week Three Programming Assignment 2
## Title: Computing the object of an inverse matrix and retrieving it with a second code.
## October 1, 2016

## Author: James Addo

## Two fuctions that initially computes for an inverse of a matrix object and further computes or returns the inverse value when already in existance.

makeCacheMatrix <- function(x = matrix()) { # creates matrix object
  inv <- NULL # define inverse vector value
  set <- function(y) { # define a place holder function
    x <<- y
    inv <<- NULL # define inverse vector value
  }
  get <- function()  x # gets content of the created matrx
  setInverse <- function(inverse) inv <<- inverse # defines and set the value of the inverse mtrix
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse) # provides a list of the set and get arguments
}


## computes or returns the inverse value when already in existance.

cacheSolve <- function(x, ...) { 
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matt <- x$get()
  inv <- solve(matt, ...)
  x$setInverse(inv)
  inv
}
