
#This function cache the matrix in a list
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      # Get the matrix values
      get <- function() 
      # get the invers
      setm <- function(solve) m <<- solve
      getm <- function() m
      # Return the matrix as a list
      list(set = set, get = get,
           setm = setm,
           getm = getm)
}

# This function returns inverse of the matrix
cacheSolve <- function(x, ...) {
      # Get the matrix
      inv <- x$getm()
      # If is null, get the matrix in cache
      if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
      }
      # else, calculate the matrix
      data <- x$get()
      inv <- solve(data, ...)
      x$setm(inv)
      # Return the inverse
      inv
}
