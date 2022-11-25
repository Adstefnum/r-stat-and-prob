variant=9
data = read.csv("data/spotify_data.csv")
variant_variable=variant%%10+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
print(paste("This variant data column is", colnames(data)[variant_variable]))


#minimum
data_min = min(x)
res_min <- sprintf("The minimum of the %s = %.4f",colnames(data)[variant_variable],data_min)
print(res_min)


#maximum
data_max = max(x)
res_max <- sprintf("The maximum of the %s = %.4f",colnames(data)[variant_variable],data_max)
print(res_max)

#mean
data_mean = mean(x)
res_mean <- sprintf("The mean of the %s = %.4f",colnames(data)[variant_variable],data_mean)
print(res_mean)