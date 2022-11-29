source('hw_1/data/data.R')
#######Task 2
hist(x,xlab="valence",ylab="values", main="valence in spotify music data")


library(e1071) 
skewness(x)#skewness 

library(moments)
kurtosis(x)#kurtosis