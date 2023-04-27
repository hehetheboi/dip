# create data frame of heights
girls_heights <- c(155, 152, 157, 144, 168, 150, 152, 155, 158, 138, 145, 150, 155, 167, 155)
boys_heights <- c(170, 150, 152, 155, 158, 146, 158, 157, 140, 154, 152, 156, 150, 150, 146)

# create a data frame with heights and gender
height_data <- data.frame(
  height = c(girls_heights, boys_heights),
  gender = factor(c(rep("female", length(girls_heights)), rep("male", length(boys_heights))))
)

# perform ANOVA
result <- aov(height ~ gender, data = height_data)

# print ANOVA summary
summary(result)
