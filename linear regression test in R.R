# Define the data
professor_ratings <- c(2.4, 4.8, 3.3, 1.7, 4.4, 3, 1.5, 2.3, 4.7, 3.5, 2.3, 1.5, 4.2, 2.5, 3.2, 1.9, 3.2, 4.4, 2.9, 1, 3.8, 4.6, 1.6, 2.8)
average_gpa <- c(2.72, 3.41, 3.82, 3.25, 3.25, 3.19, 2.9, 3.4, 3.3, 3.57, 3.06, 2.79, 3.4, 3.4, 3.46, 3.51, 2.91, 3.08, 3.6, 2.98, 2.98, 2.92, 2.8, 3.09)

# Create a data frame from the vectors
data <- data.frame(professor_ratings, average_gpa)

# Perform linear regression
model <- lm(average_gpa ~ professor_ratings, data = data)

# Print the summary of the regression model
summary(model)

# Plot the data and the regression line
plot(average_gpa ~ professor_ratings, data = data, main = "Linear Regression Analysis", xlab = "Professor Rating", ylab = "Average GPA")
abline(model, col = "red")
