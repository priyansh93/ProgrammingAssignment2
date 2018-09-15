##makeCacheMatrix makes the matrix and cacheSolve looks if the inverse is already
##cached

## This function takes matrix as input.User can set the inverse of matrix
##User can get The matrix and its inverse using this fuction

makeCacheMatrix <- function(x = matrix()) {
  y<-NULL
  getMatrix<-function() x
  setInverse<-function(z)
  {
    y<<-z
  }
  getInverse<-function() y
  list(getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)

}


## This function looks for cached data if available it does no computations
## If not available it finds the inverse

cacheSolve <- function(x, ...) {
  inverse<-x$getInverse()     
  if(!is.null(inverse))
  {
    message("getting cached data")
    inverse
  }
  else
  {
    inverse<-solve(x$getMatrix())
  }
  
}
