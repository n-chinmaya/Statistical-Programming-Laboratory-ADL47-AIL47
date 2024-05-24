# Define a list of products with names and prices
all_products <- list(
  list(name = "Apple", price = 0.5),
  list(name = "Banana", price = 0.3),
  list(name = "Milk", price = 2),
  list(name = "Bread", price= 1)
)

# Display the price list
cat("Name \t Price\n")
cat("==============\n")
for (i in all_products)
  cat(sprintf("%s \t%.2f\n", i$name, i$price))

# Initialize the shopping cart as an empty list
shopping_cart <- list()

# Define items to be added to the cart
cart_items_to_add <- list(
  list(name = "Apple", quantity = 3),
  list(name = "Milk", quantity = 2),
  list(name = "Biscuits", quantity = 1),  #modified
  list(name = "Chocolate", quantity = 1)  #modified
)

# Add items to the shopping cart if they are available in the store
for (item in cart_items_to_add) 
{
  product_name <- item$name
  qnty <- item$quantity
  
  product <- NULL
  # Find if the product is available in the store/products list
  for (p in all_products) 
  {
    if (p$name == product_name) 
    {
      product <- p
      break
    }
  }
  
  # If the product is available in the store, add it to the shopping cart
  if (!is.null(product)) {
    cart_item <- list(name = product$name, price = product$price, quantity = qnty)
    shopping_cart <- append(shopping_cart, list(cart_item))
    cat("Item added to cart.\n")
  } else {
    cat("Product not found.\n")
  }
}

# Calculate and display the receipt
subtotal <- 0

cat("\nReceipt:\n")
cat("========\n")

for (item in shopping_cart) {
  item_subtotal <- item$price * item$quantity
  subtotal <- subtotal + item_subtotal
  cat(sprintf("%s (%d units) - Price: $%.2f - Subtotal: $%.2f\n", item$name, item$quantity, item$price, item_subtotal))
}


tax_rate <- 0.08
tax_amount <- subtotal * tax_rate
total_cost_before_tax <- subtotal
total_cost <- total_cost_before_tax + tax_amount

cat(sprintf("\nSubtotal: $%.2f\n", subtotal))
cat(sprintf("Tax Amount (8%%): $%.2f\n", tax_amount))
cat(sprintf("Total Cost: $%.2f\n", total_cost))