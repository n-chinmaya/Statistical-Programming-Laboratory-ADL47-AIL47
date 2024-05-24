# Initial queue
queue <- c("Steve", "Russell", "Alison", "Liam")

# a. Barry arrives
queue <- c(queue, "Barry")
print(queue)  # "Steve" "Russell" "Alison" "Liam" "Barry"

# b. Steve is served
queue <- queue[-1]
print(queue)  # "Russell" "Alison" "Liam" "Barry"

# c. Pam takes her way to the front with one item
queue <- c("Pam", queue)
print(queue)  # "Pam" "Russell" "Alison" "Liam" "Barry"

# d. Barry gets impatient and leaves
queue <- queue[queue != "Barry"]
print(queue)  # "Pam" "Russell" "Alison" "Liam"

# e. Alison gets impatient and leaves
queue <- queue[queue != "Alison"]
print(queue)  # "Pam" "Russell" "Liam"

# f. Find the position of Russell in the queue
position_russell <- which(queue == "Russell")
print(position_russell)  # 2
