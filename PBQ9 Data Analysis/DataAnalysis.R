library(readr)
library(dplyr)
library(ggplot2)

# Task 1: Load the Dataset - USE YOUR DIRECTORY OF THE CSV FILE!
purchase_data <- read_csv("/Users/narmdeshwarlal/Downloads/shopping_trends.csv")

# Load required libraries

# Task 2: Data Summary
total_records <- nrow(purchase_data)
total_customers <- n_distinct(purchase_data$CustomerID)

cat("Total Number of Records:", total_records, "\n")
cat("Total Number of Unique Customers:", total_customers, "\n")

# Task 3: Calculate Statistical Measures
mean_purchase <- mean(purchase_data$PurchaseAmount)
median_purchase <- median(purchase_data$PurchaseAmount)
sd_purchase <- sd(purchase_data$PurchaseAmount)

cat("Mean Purchase Amount:", mean_purchase, "\n")
cat("Median Purchase Amount:", median_purchase, "\n")
cat("Standard Deviation of Purchase Amounts:", sd_purchase, "\n")

# Task 4: Customer Segmentation (Based on Quartiles)
q1_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.25)
q2_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.5)
q3_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.75)

cat(q1_purchase, "\n")
cat(q2_purchase, "\n")
cat(q3_purchase, "\n")

purchase_data <- purchase_data %>%
  mutate(Segment = case_when(
    PurchaseAmount < q1_purchase ~ "Low Spender",
    PurchaseAmount >= q1_purchase & PurchaseAmount < q3_purchase ~ "Medium Spender",
    PurchaseAmount >= q3_purchase ~ "High Spender"
  ))

print(purchase_data)

# Task 5: Visualize Data (Histogram)
ggplot(purchase_data, aes(x = PurchaseAmount)) +
  geom_histogram(binwidth = 50, fill = "blue", color = "black") +
  labs(title = "Distribution of Purchase Amounts", x = "Purchase Amount", y = "Frequency")

# Save the visualizations as image files (USE YOUR OWN DIRECTORY TO SAVE PNG!)
ggsave("/Users/narmdeshwarlal/Statistical-Programming-Laboratory-ADL47-AIL47/PBQ9\ Data\ Analysis/purchase_histogram.png", width = 8, height = 6)

# Task 6: Visualize Relationship (Scatter Plot)
ggplot(purchase_data, aes(x = CustomerID, y = PurchaseAmount)) +
  geom_point(color = "green") +
  labs(title = "Customer Purchase Amounts", x = "Customer ID", y = "Purchase Amount")

# Save the visualizations as image files (USE YOUR OWN DIRECTORY TO SAVE PNG!)
ggsave("/Users/narmdeshwarlal/Statistical-Programming-Laboratory-ADL47-AIL47/PBQ9\ Data\ Analysis/customer_purchase_scatter.png", width = 8, height = 6)