mat <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow = 4, byrow = TRUE)
mat[, 2] <- sort(mat[, 2])
print(mat)