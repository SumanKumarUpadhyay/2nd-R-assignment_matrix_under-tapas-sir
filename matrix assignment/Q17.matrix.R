matrix_c <- matrix_a
matrix_c[, 1] <- sort(matrix_a[, 1], decreasing = TRUE)
print(matrix_c)