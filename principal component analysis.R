# Load the iris dataset
data(iris)

# Take the numeric part of the iris data
data_iris <- iris[,1:4]

# Standardize the data
scaled_data <- scale(data_iris)

# Perform PCA
pca_result <- prcomp(scaled_data)

# Plot the first two principal components
plot(pca_result$x[,1], pca_result$x[,2], 
     col = as.numeric(iris$Species),
     pch = 19,
     xlab = "PC1",
     ylab = "PC2",
     main = "PCA Plot")

# Add legend
legend("topleft", 
       legend = levels(iris$Species),
       col = 1:3, 
       pch = 19,
       title = "Species")
