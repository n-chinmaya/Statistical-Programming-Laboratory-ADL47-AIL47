subject<-c("MFC","DAA","MCES","OS","BFE","UHV")
marks<-c( 91,73,65,45,54,32)
avg<-mean(marks)
barplot(marks,names.arg=subject,col="skyblue",main="Students's Performance in 4th sem AI & DS",
    xlab="subjects",ylab="Marks")
pie(marks,labels = subject,col=rainbow(length(marks)),
    main = "Student's Performance in 4th Sem AI & DS")
cat("Average Marks:",avg,"\n")
for(i in 1:length(marks)){
  cat(subject[i],":",ifelse(marks[i]>=avg, "Good", "Needs Improvement"),"\n")
}