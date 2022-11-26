variant=9
data = read.csv("hw_1/data/air_quality.csv")
variant_variable=variant%%12+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
print(paste("This variant data column is", colnames(data)[variant_variable]))

array = table(x)