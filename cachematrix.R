makeCacheMatrix <- function(mat = matrix()) {
  
  ## Set the inverse function
  inv <- NULL
  set <- function(matrix) {
    mat <<- matrix
    inv <<- NULL
  }
  ## Store the value of the matrix
  get <- function() {
    ## Return the matrix
    mat
  }
  ## Set the inverse of the matrix
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  ## Store the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    inv
  }
  ## Back a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## Compute the inverse by "makeCacheMatrix"
## Back to a matrix  "mat"
mat <- x$getInverse()
if (!is.null(mat)) {
  message("getting cached data")
  return(mat)
}
## Compute the inverse via matrix multiplication
mat <- solve(data) %*% data
## Set the inverse to the object
x$setInverse(mat)
## Return the matrix
mat
}
