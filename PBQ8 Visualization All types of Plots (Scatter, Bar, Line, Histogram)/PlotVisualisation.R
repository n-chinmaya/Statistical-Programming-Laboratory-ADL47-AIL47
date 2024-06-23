library(ggplot2)
library(gridExtra)

students <- c("Max", "Lando", "Charles", "Carlos", "Daniel",
              "Checo", "Lewis", "George", "Yuki", "Oscar")
avg_scores <- c(99, 89, 67, 99, 65, 26, 48, 63, 79, 92)
attendance <- c(100, 67, 24, 89, 42, 47, 96, 37, 27, 67)

student_data <- data.frame(students, avg_scores, attendance)

print(student_data)

# scatter plot of average scores vs attendance
scplot <- ggplot(student_data, aes(x=avg_scores, y=attendance)) + geom_point(size=3, color="blue") + labs(title="Scatter Plot")
print(scplot)

# bar plot of average scores of every student
bplot <- ggplot(student_data, aes(x=students, y=avg_scores)) + geom_bar(stat="identity", fill="green") + labs(title="Bar Plot")
print(bplot)

student_data$time <- seq(as.Date("2024-01-01"), by="month", length.out=10)
# line plot of score trends
lplot <- ggplot(student_data, aes(x=time, y=avg_scores)) + geom_line(linetype=2, size=1) + labs(title="Score Trends") + geom_point(color="blue", size=3)
print(lplot)

# histogram of scores
hplot <- ggplot(student_data, aes(x=avg_scores)) + geom_histogram(bins=10, color="black", fill="cyan") + labs(title="Histogram")
print(hplot)

grid.arrange(scplot, bplot, lplot, hplot)