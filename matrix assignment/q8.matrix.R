A <- matrix(c(1, 2, 7, 1), nrow = 2, byrow = TRUE)
B <- matrix(c(3, 4, 8, 2), nrow = 2, byrow = TRUE)

# (i) A * B
AB <- A %*% B
print("A * B:")
print(AB)

# (ii) A^T * B
AT <- t(A)  # Transpose of A
ATB <- AT %*% B
print("A^T * B:")
print(ATB)

# (iii) B^T * (A * A^T)
AA_T <- A %*% t(A)  # A * A^T
BT <- t(B)  # Transpose of B
BT_AA_T <- BT %*% AA_T
print("B^T * (A * A^T):")
print(BT_AA_T)

# (iv) (A * A^T) * B^T
AA_T_BT <- AA_T %*% BT
print("(A * A^T) * B^T:")
print(AA_T_BT)

# (v) [(B * B^T) + (A * A^T) - 100I]^-1
BB_T <- B %*% t(B)  # B * B^T
I <- diag(2) * 100  # 100I
matrix_to_invert <- BB_T + AA_T - I
print("Matrix to invert:")
print(matrix_to_invert)

if (det(matrix_to_invert) != 0) {
  inverse_matrix <- solve(matrix_to_invert)
  print(inverse_matrix)
} else {
  print("The matrix is not invertible.")
}