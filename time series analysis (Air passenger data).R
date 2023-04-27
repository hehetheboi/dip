# Load the dataset
data(AirPassengers)

# Convert the data to a time-series object
ts_data <- ts(AirPassengers, frequency = 12, start = c(1949, 1))

# Plot the time-series data
plot(ts_data, main = "Monthly Airline Passenger Counts", ylab = "Passenger Count")
# Load the forecast package
library(forecast)

# Fit an ARIMA model to the data
fit <- auto.arima(ts_data)

# Generate a forecast for the next 12 months
forecast_data <- forecast(fit, h = 12)

# Plot the forecast
plot(forecast_data, main = "Monthly Airline Passenger Counts Forecast", ylab = "Passenger Count")
