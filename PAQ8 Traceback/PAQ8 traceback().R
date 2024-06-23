# Function 1 
function_1 <- function(a){ 
  a + 5
} 

# Function 2 
function_2 <- function(b) { 
  function_1(b) 
} 

# Calling function 
function_2("s") 

# Call traceback() 
traceback() 