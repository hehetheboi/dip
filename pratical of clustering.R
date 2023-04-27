# Load the iris dataset
data(iris)

# Select only the numerical variables
iris_num <- iris[,1:4]

# Standardize the variables
iris_num_std <- scale(iris_num)

# Perform k-means clustering with k=3
set.seed(123)
kmeans_fit <- kmeans(iris_num_std, 3)

# Visualize the results using a scatter plot
library(ggplot2)

# Add cluster labels to the iris dataset
iris_clustered <- data.frame(iris_num_std, cluster=kmeans_fit$cluster)

# Plot Sepal.Length vs. Sepal.Width, colored by cluster
ggplot(iris_clustered, aes(x=Sepal.Length, y=Sepal.Width, color=factor(cluster))) + 
  geom_point() +
  labs(title="K-Means Clustering of Iris Dataset (k=3)", x="Sepal Length (standardized)", y="Sepal Width (standardized)") +
  theme_minimal()
