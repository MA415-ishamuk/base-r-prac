# 1
A <- matrix(c(1,1,3,5,2,6,-2,-1,-3), nrow = 3, byrow = T)
A %*% A %*% A #a
A[,3] <- A[,2] + A[,3] #b
A

# 2
B = matrix(rep(c(10,-10,10), 15), nrow = 15, byrow = T)
crossprod(B) 

# 3
matE <- matrix(0,6,6)
rows <- row(matE)
cols <- col(matE)
matE[abs(rows - cols) == 1] <- 1
matE

# 4
x4 <- c(0:4)
outer(x4,x4,"+")

# 5 
x5a <- 5 #a
x5a1 <- c(0:(x5a-1)) 
outer(x5a1, x5a1, "+") %% (x5a)

x5b <- 10 #b
x5b1 <- c(0:(x5b-1)) 
outer(x5b1, x5b1, "+") %% (x5b)

x5c <- 9 #c
x5c1 <- c(0:(x5c-1))
outer(x5c1, x5c1, "-") %% (x5c)
