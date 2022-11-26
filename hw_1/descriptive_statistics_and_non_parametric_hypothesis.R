variant=9
data = read.csv("hw_1/data/spotify_data.csv") 
variant_variable=variant%%10+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
cat(paste("This variant data column is", colnames(data)[variant_variable]))

######Task 1
#minimum
res_min <- sprintf("\n\nThe minimum of the %s = %.4f",colnames(data)[variant_variable],min(x))
cat(res_min)


#maximum
res_max <- sprintf("\n\nThe maximum of the %s = %.4f",colnames(data)[variant_variable],max(x))
cat(res_max)

#mean
res_mean <- sprintf("\n\nThe mean of the %s = %.4f",colnames(data)[variant_variable],mean(x))
cat(res_mean)

#sample size
res <- sprintf("\n\nThe sample size of the %s = %.4f",colnames(data)[variant_variable],length(x))
cat(res)

#median
res <- sprintf("\n\nThe median of the %s = %.4f",colnames(data)[variant_variable],median(x))
cat(res)

#mode
library("modeest")
res <- sprintf("\n\nThe mode of the %s = %.4f",colnames(data)[variant_variable],mfv(x))
cat(res)

#quartile
quant = quantile(x)
cat("\n\nThe quartiles are:\n")
print(quant)

#variance
res <- sprintf("\n\nThe variance of the %s = %.4f",colnames(data)[variant_variable],var(x))
cat(res)

#standard variation
res <- sprintf("\n\nThe standard variation of the %s = %.4f",colnames(data)[variant_variable],sd(x))
cat(res)

#range
res <- sprintf("\n\nThe range of the %s = %.4f",colnames(data)[variant_variable],range(x))
cat(res)

#interquartile range
res <- sprintf("\n\nThe interquartile range of the %s = %.4f",colnames(data)[variant_variable],quant[4]-quant[2])
cat(res)

boxplot(x,xlab="valence",ylab="values")

#######Task 2
hist(x,xlab="valence",ylab="values", main="valence in spotify music data")

#######Task 3
# array = table(x)