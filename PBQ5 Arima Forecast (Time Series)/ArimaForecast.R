# Load required libraries
library(forecast)

# Create a data frame with Month and Sales columns
sales_data <- data.frame(
  Month = seq(as.Date("2023-01-01"), as.Date("2023-06-01"), by = "months"),
  Sales = c(12000, 15000, 18000, 16000, 20000, 22000)
)

# Convert to time series
sales_ts <- ts(sales_data$Sales, frequency = 12)

# Fit ARIMA model
arima_model <- auto.arima(sales_ts)

# Forecast sales for next 3 months
forecast_result <- forecast(arima_model, h = 3)

# Display forecast results
print(forecast_result)