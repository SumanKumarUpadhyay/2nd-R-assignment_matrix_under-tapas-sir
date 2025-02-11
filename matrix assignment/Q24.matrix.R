set.seed(123)
array_3D <- array(sample(1:9, size = 36, replace = TRUE), dim = c(3, 3, 4))
print(array_3D)
extracted_elements <- array_3D[1, 3, ]
print(extracted_elements)
