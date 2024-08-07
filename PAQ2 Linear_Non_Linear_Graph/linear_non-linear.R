x <- seq(-5,10, by=0.1)
M <- 2
C <- 4
eq <- M*x+C
neq1 <- x^2
neq2 <- x^3
neq3 <- sqrt(abs(x))
neq4 <- sin(x)
neq5 <- log(x)
plot(x,eq,type="l",col="blue",lty=2,xlab="X",ylab="Y",main="Graphs of Linear and Non-linear Equations")
lines(x,neq1,col="red")
lines(x,neq2,col="green")
lines(x,neq3,col="purple")
lines(x,neq4,col='orange')
lines(x,neq5,col='pink')
legend("topright",legend = c("Linear(Y=2x+4)","Non-linear(Y=x^2)","Non-linear(Y=x^3)","Non-linear(Y=sqrt(x))","Y=sin(x)","Y=log(x)"))
col = c("blue","red","green","purple","orange","pink",cex=0.8)