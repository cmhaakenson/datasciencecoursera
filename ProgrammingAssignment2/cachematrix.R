## These two functions create an object that can cache the inverse of a matrix and one that can check for the cache
## if the inverse has already been calculated, the inverse is retrieved from the cache, otherwise it is calculated

## This function creates a special matrix object, which contains a function to cache the matrix inverse

makeCacheMatrix <- function(mat = matrix()) {
    cachemat <- NULL
    cacheinv <- NULL
    # setting the matrix:
    set <- function() cachemat <<- mat
    # getting the matrix:
    get <- function() cachemat
    # caching the inverse of the matrix:
    setinv <- function(cacheinv) cacheinv <<- solve(cachemat)
    # gettubg the inverse from the cache:
    getinv <- function() cacheinv
    # creating a list object that contains the above items:
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
    # checking if the inverse is cached:
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    # if the inverse is not cached, get the matrix and calculate inverse:
    else {
    a$set()
    mat <- x$get()
    inv <- solve(mat)
    x$setinv(inv)
    x$getinv()
    }
}