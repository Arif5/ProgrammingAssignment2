## the below funtions are used to make a matrix and return the inverse of it

## makeCacheMatrix function is used to make the matrix by taking the argment as matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## CacheSolve function will check the matrix and get the matrix from makeCacheMatrix and return the inverse of the matrix

cacheSolve <- function(x, ...) { m <- x$getmean()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setmean(m)
m
  
        ##  a matrix that is the inverse of 'x' is returned
}
