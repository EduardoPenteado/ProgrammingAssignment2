
#This function cache the matrix
makeCacheMatrix <- function(x = matrix()) {
      x
}

# This function returns inverse of the a matrix if the determinant is different of zero
cacheSolve <- function(x, ...) {
    # Check the determinant
    if (det(x) != 0) {
      inv <- solve(x)
      inv
    }
    else {
      # Can't calculate the inverse
      print("This matriz is not invertible")
    }
}
