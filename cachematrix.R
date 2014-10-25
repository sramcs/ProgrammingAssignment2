## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##creates a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	## Initialixe the inverse property
	m <- NULL
	## Method to set the matrix
 	set <- function(y){
 		x <<- y
 		m <<- NULL
 	}
 	## Method to get the matrix
 	get <- function(){
 		##Return the matrix
 		x
 	}
 	## Method to inverse the matrix
 	setInverse <- function(inverse){
 		m <<- inverse
 	}
 	##Method to get the inverse of the matrix
 	getInverse <- function() {
 		##Return the inverse property
 		m
 	}
 	
 	## Return a list of methodds
 	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse
        
        ## Return the inverse if already exists
        if(!is.null(m)) {
        	message("getting cached data")
        	return(m)
        }
        
        ##Get the matrix of the object
        data <- x$get()
        
        ##calcualte the inverse
        m <- solve(data,...)
        
        ## Set the inverse to the object
        x$setmean(m)
        
        ##Return the matrix
        m
        
}
