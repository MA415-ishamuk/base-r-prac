# 1
tmpFn1 <- function(xVec) { 
  x1_ind <- c(1:length(xVec))
  x1 <- xVec^x1_ind
  x1
}
tmpFn2 <- function(xVec) {
  x2_ind <- c(1:length(xVec))
  x2 <- (xVec^x2_ind)/(x2_ind)
  x2
}

