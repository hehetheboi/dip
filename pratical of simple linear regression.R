# Load the ggplot2 package for data visualization
library(ggplot2)

# Create a dataset with two variables x and y
x <- c(2, 4, 6, 8, 10)
y <- c(3, 5, 7, 9, 11)
data <- data.frame(x, y)

# Plot the data using ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "X", y = "Y", title = "Simple Linear Regression")

# Fit a linear regression model to the data
model <- lm(y ~ x, data = data)

# Print the model summary
summary(model)
