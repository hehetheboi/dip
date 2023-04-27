# Load the dataset
data(iris)

# Convert the categorical variable 'Species' to a binary variable
iris$binarySpecies <- ifelse(iris$Species == "setosa", 1, 0)

# Perform logistic regression
logit <- glm(binarySpecies ~ Petal.Length, data = iris, family = binomial)

# Print the summary of the logistic regression model
summary(logit)

# Visualize the data using a scatter plot
library(ggplot2)
ggplot(iris, aes(x = Petal.Length, y = binarySpecies)) +
  geom_point()  +geom_smooth(method = "glm",method.args=list(family="binomial"))
  labs(title = "Logistic Regression of Iris Dataset",
       x = "Petal Length", y = "Binary Species") +
  theme_minimal()
 