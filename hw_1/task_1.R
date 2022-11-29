source('hw_1/data/data.R')
######Task 1

#sample size
res <- sprintf("\n\nThe sample size of the %s = %.4f",colnames(data)[variant_variable],length(x))
cat(res)

#minimum
res_min <- sprintf("\n\nThe minimum of the %s = %.4f",colnames(data)[variant_variable],min(x))
cat(res_min)


#maximum
res_max <- sprintf("\n\nThe maximum of the %s = %.4f",colnames(data)[variant_variable],max(x))
cat(res_max)

#mean
res_mean <- sprintf("\n\nThe mean of the %s = %.4f",colnames(data)[variant_variable],mean(x))
cat(res_mean)


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
ranges = range(x)
range_res = ranges[2]-ranges[1]
res <- sprintf("\n\nThe range of the %s = %.4f",colnames(data)[variant_variable],range_res)
cat(res)


#interquartile range
res <- sprintf("\n\nThe interquartile range of the %s = %.4f",colnames(data)[variant_variable],quant[4]-quant[2])
cat(res)

boxplot(x,xlab="valence",ylab="values")