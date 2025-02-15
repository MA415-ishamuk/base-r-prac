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

# 6
A6 <- matrix(0,5,5)
A6 <- abs(col(A6) - row(A6)) + 1
b6 <- c(7,-1,-3,5,17)
solve(A6,b6)

# 7
set.seed(75)
aMat <- matrix(sample(10, size = 60, replace = T), nr = 6)

rowSums(aMat > 4) #a --> could also use apply()
x7b <- aMat == 7 #b --> could also use apply()
x7b_occur <- rowSums(x7b)
which(x7b_occur == 2)
xc7_sums <- colSums(aMat) #c
which(outer(xc7_sums, xc7_sums, "+") > 75, arr.ind = T)

# 8 
j <- c(1:5) #a -> can also do: sum( (1:20)^4 ) * sum( 1/(4:8) )
x8a1 <- 3 + j
x8a1 <- rep(x8a1, each = 20)
i <- c(1:20)
x8a2 <- (i^4)/(x8a1)
sum(x8a2)

x8b1 <- 3 + outer(1:20, 1:5) #b
x8b2 <- (i^4)/(x8b1)
sum(x8b2)

sum( outer(1:10,1:10,function(i,j){ (i>=j)*i^4/(3+i*j) }) ) #c -> needed help!
