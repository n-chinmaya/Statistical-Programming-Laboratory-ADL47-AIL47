# Task 1: Matrix Creation
matrix_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
matrix_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3, ncol = 3, byrow = TRUE)

cat("Matrix A:\n")
print(matrix_A)

cat("Matrix B:\n")
print(matrix_B)

# Task 2: Matrix Manipulation
sum_matrix <- matrix_A + matrix_B
scaled_matrix <- matrix_A * 2

cat("Sum of Matrix A and Matrix B:\n")
print(sum_matrix)

cat("Scaled Matrix A (multiplied by 2):\n")
print(scaled_matrix)

# Task 3: Matrix Operations
transposed_A <- t(matrix_A)
product_matrix <- matrix_A %*% matrix_B

cat("Transposed Matrix A:\n")
print(transposed_A)

cat("Product of Matrix A and Matrix B:\n")
print(product_matrix)

# Task 4: Matrix Statistics
cat("Sum of all elements in Matrix A:\n")
print(sum(matrix_A))

cat("Mean of all elements in Matrix B:\n")
print(mean(matrix_B))

cat("Standard deviation of all elements in Matrix B:\n")
print(sd(matrix_B))

# Task 5: Visualization
library(ggplot2)
library(reshape2)

# Create a heatmap of matrix_A
heatmap_data <- melt(matrix_A)
heatmap_plot <- ggplot(heatmap_data, aes(x = Var2, y = Var1, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Heatmap of Matrix A", x = "Column", y = "Row")

# Create a bar plot comparing sums of rows in matrix_B
row_sums <- rowSums(matrix_B)
row_names <- paste("Row", 1:3)
barplot_data <- data.frame(Row = row_names, Sum = row_sums)
barplot_plot <- ggplot(barplot_data, aes(x = Row, y = Sum)) +
  geom_bar(stat = "identity", fill = "green") +
  labs(title = "Sums of Rows in Matrix B", x = "Row", y = "Sum")

# Display the visualizations
print(heatmap_plot)
print(barplot_plot)