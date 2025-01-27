# 1
c(1:20) #a
c(20:1) #b
c(1:20,19:1) #c
tmp <- c(4,6,3) #d
rep(tmp,10) #e
rep(tmp,11)[1:31] #f
rep(tmp, c(10,20,30)) #g

# 2
x2 <- seq(from = 3, to = 6, by = 0.1) 
exp(x2)*cos(x2)

# 3
x3a1 <- seq(3,36,3) #a
x3a2 <- seq(1,34,3)
c(0.1^(x3a1)*0.2^(x3a2))

x3b <- c(1:25) #b
c((2^x3b)/x3b)

# 4 
x4a <- c(10:100) #a
x4a <- c(x4a^3 + 4*(x4a^2))
sum(x4a)

x4b <- c(1:25) #b
x4b <- c(((2^(x4b))/x4b) + ((3^(x4b))/(x4b^2)))
sum(x4b)

# 5 
x5 <- c(1:30) #a
paste0('label ', x5)

paste0('fn', x5) #b

# 6
set.seed(50)
xVec <- sample(0:999, 250, replace = T)
yVec <- sample(0:999, 250, replace = T)

# 7 
x7a <- yVec[yVec > 600] #a
x7b <- order(x7a) #b

