#LAPPLY()
# create sample data 
names <- c("priyank", "abhiraj","pawananjani", 
           "sudhanshu","devraj") 
print( "original data:") 
print(names) 

# apply lapply() function 
print("data after lapply():") 
print(lapply(names, toupper)) 

#SAPPLY()
# create sample data 
sample_data<- data.frame( x=c(1,2,3,4,5,6), 
                          y=c(3,2,4,2,34,5)) 
print( "original data:") 
print(sample_data) 

# apply sapply() function 
print("data after sapply():") 
print(sapply(sample_data, max))