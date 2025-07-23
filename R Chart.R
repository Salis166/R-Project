# Bar Chart in R 
student <- c("Alice","Bob","Charlie","Daisy","Ethan")
scores <- c(85,92,78,88,95)
#Create bar chart 
barplot(scores,names.arg = student,
        col = "skyblue",
        main = "student score",
        xlab = "student",
        ylab = "scores",
        ylim = c(0,100))

# Horizontal bar chat 
barplot(scores,names.arg = student,
        horiz = TRUE,
        col = "lightgreen",
        main = "student scored",
        xlab = "scores",
        xlim = c(0,100))

# Bar chart using ggplot2
# Create data frame
# Create data
students <- c("Alice", "Bob", "Charlie", "Daisy", "Ethan")
scores <- c(85, 92, 78, 88, 95)

df <- data.frame(students, scores)

# Plot
library(ggplot2)

ggplot(df, aes(x = students, y = scores, fill = students)) +
  geom_bar(stat = "identity") +
  labs(title = "Student Scores", x = "Student", y = "Score") +
  theme_minimal() +
  ylim(0, 100)


# What Does ggplot2 Do?
# ggplot2 helps you create beautiful, customizable, and professional-looking 
# charts with minimal code.

# It’s based on The Grammar of Graphics — a layered approach to building plots. 
# Instead of one giant command, you build your plot step-by-step.

# Structure of a ggplot2 plot
ggplot(data, aes(x = ..., y = ...)) +
  geom_xxx() +
  other_layers 


# Pie
# Data
students <- c("Alice", "Bob", " Charlie", "Daisy", "Ethan")
scores <- C(85,92,78,88,95)
# Create pie chart
pie(scores,
    labels = students,
    main = "student scores pie charts",
    col = rainbow(length (scores)))

# Pie chart with percentage
Pie chart with percentage
percentage <- round(scores/sum(scores)*100)
labels <- paste(students, percentage, "%")
pie(scores,
    labels=labels,
    main = "student score pie charts",
    col = heat.colors(length(scores)))



