# create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz"),
  Age = c(22, 15)
)

# create another data frame
dataframe2 <- data.frame (
  Name = c("Yiruma", "Bach", "Ludovico"),
  Age = c(46, 89, 72)
)

# combine two data frames vertically 
updated <- rbind(dataframe1, dataframe2)
print(updated)