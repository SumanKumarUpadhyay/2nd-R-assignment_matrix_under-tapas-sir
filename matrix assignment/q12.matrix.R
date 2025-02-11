second_row <- extracted_values[2, ]
repeated_values <- rep(second_row, times = 4)
new_array <- array(repeated_values, dim = c(2, 2, 3))
print(new_array)