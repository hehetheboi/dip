# Create vectors for aptitude and job proficiency scores
aptitude <- c(85, 65, 50, 68, 87, 74, 65, 96, 94, 68, 73, 84, 85, 87, 90)
job_proficiency <- c(70, 90, 80, 89, 88, 86, 78, 67, 90, 86, 92, 94, 99, 93, 86)

# Conduct a two-sided t-test assuming equal variances
t_test <- t.test(x = aptitude, y = job_proficiency, var.equal = TRUE)

# Print the results
t_test
