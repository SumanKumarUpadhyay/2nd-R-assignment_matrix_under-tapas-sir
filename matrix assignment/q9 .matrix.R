A <- diag(c(2,3,5,-1))
a_inv <- solve(A)
I_4 <-diag(4)
result <- a_inv %*% A - I_4
print(result)