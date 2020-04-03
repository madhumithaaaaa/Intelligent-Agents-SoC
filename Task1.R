 three.dice <- function(){
 dice <- sample(1:6, size=3, replace=TRUE)
 return(sum(dice))
 }
 
 sims <- replicate(50, three.dice())
 sims

 plot(table(sims), xlab='Sum', ylab='Frequency', main='50 Rolls of 3 fair dice')
 
 tensims <- replicate(10, replicate (50, three.dice()))
 prob <- sum((14 <= tensims) & (tensims <= 16))/length(tensims)
 prob
