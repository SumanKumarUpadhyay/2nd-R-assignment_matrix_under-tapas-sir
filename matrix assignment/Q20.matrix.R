corners <- c(matrix_c[1, 1], matrix_c[1, 3], matrix_c[5, 1], matrix_c[5, 3])
corner_avg <- mean(corners)
matrix_e <- matrix_c
positions <- list(c(2, 1), c(2, 3), c(5, 1), c(5, 3))
for (pos in positions) {
  matrix_e[pos[1], pos[2]] <- corner_avg
}
print(matrix_e)
