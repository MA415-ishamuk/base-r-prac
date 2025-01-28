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

yVec[2:250] - xVec[1:249] #a
sin(yVec[1:249])/cos(xVec[2:250]) #b
x6c <- c(1:248) #c
xVec[x6c] + (2*(xVec[x6c + 1])) - (xVec[x6c + 2])
x6d <- c(1:249) #d
sum((exp(-(xVec[x6d + 1])))/(xVec[x6d] + 10))

# 7 
x7a <- yVec[yVec > 600] #a
x7a
x7b <- order(x7a) #b
x7b
x7c <- xVec[x7b] #c
x7c
x7d1 <- mean(xVec) #d
abs(xVec - x7d1)^(1/2)
x7e_max_in <- order(yVec, decreasing = T)[1] #e
x7e_max <- yVec[x7e_max_in]
sum(x7e_max - 200 <= yVec)
sum(xVec %% 2 == 0) #f
x7g_order <- order(yVec, decreasing = F) #g
xVec[x7g_order]
x7h <- seq(1,250,3) #h
yVec[x7h]

# 8 
x8 <- seq(2,38,2)
x8_vec <- c(1,cumprod(x8/(x8 + 1)))
sum(x8_vec)

