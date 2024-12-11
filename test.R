# Basic Analysis of the mtcars Dataset
# Author: Your Name
# Date: YYYY-MM-DD

# Load necessary packages
# Install packages if not already installed
if (!require(ggplot2)) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# Load the mtcars dataset
data("mtcars")

# Display the first few rows of the dataset
# This gives an overview of the data structure and the first few entries
head(mtcars)

# Summary statistics of the dataset
# Provides a quick summary of each column in the dataset
summary(mtcars)

# Calculate the mean miles per gallon (mpg) for the dataset
mean_mpg <- mean(mtcars$mpg)
cat("The mean miles per gallon (mpg) is:", mean_mpg, "\n")

# Create a scatter plot of mpg vs. hp (horsepower)
# Visualizes the relationship between miles per gallon and horsepower
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of MPG vs. Horsepower",
       x = "Horsepower (hp)",
       y = "Miles per Gallon (mpg)") +
  theme_minimal()

# Save the plot to a file
ggsave("mpg_vs_hp_scatter_plot.png")

# Perform a linear regression analysis
# Fits a linear model to predict mpg based on hp
lm_model <- lm(mpg ~ hp, data = mtcars)
summary(lm_model)

# Plot the regression line
# Adds a regression line to the scatter plot to visualize the fit
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Regression Analysis: MPG vs. Horsepower",
       x = "Horsepower (hp)",
       y = "Miles per Gallon (mpg)") +
  theme_minimal()

# Save the regression plot to a file
ggsave("mpg_vs_hp_regression_plot.png")
