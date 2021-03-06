## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## create a matrix object x 
  
  ## define the cache mat
  mat <- NULL
  set <- function(y) {
    x <<- y ## assign the input matrix y to the variable x in the
    ## parent environment
    mat <<- NULL ## re-initialize m in the parent environment to null
  }
  get <- function(){x}  ## return the matrix x
  setinverse <- function(inverse) mat <<- inverse ## set the cache mat equal
  ## to the inverse of the matrix x
  getinverse <- function() mat ## return the cached inverse of x
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following function calculates the inverse of  "matrix" created

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(mat)
  mat
}
