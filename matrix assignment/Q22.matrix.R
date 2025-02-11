A <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)
B <- matrix(c(5, 6), nrow = 2, byrow = FALSE)

# 1. 
if (ncol(A) == nrow(B)) {
  C <- A %*% B
  print(C)
} else {
  print("Matrix multiplication A %*% B is not valid.")
}

# 2. 
D <- matrix(c(5, 6), nrow = 2, byrow = FALSE)

if (exists("C") && nrow(C) == nrow(D)) {
  result_2 <- t(C) %*% D
  print(result_2)
} else {
  print("Matrix multiplication C^T %*% D is not valid.")
}

# 3.
if (exists("C") && ncol(C) == nrow(C)) {
  result_3 <- t(D) %% (C %% t(C))
  print(result_3)
} else {
  print("Matrix multiplication D^T %% (C %% C^T) is not valid.")
}