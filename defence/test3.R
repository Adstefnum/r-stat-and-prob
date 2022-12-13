variant=29 #write down your variant number instead of N
data = read.csv("defence/air_quality.csv")
variant_variable=variant%%12+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
print(paste("This variant data column is", colnames(data)[variant_variable]))



# t.test(x,mu=1000,conf.level=0.95,alternative='two.sided')
 t.test(x,mu=950,conf.level=0.95,alternative='two.sided')