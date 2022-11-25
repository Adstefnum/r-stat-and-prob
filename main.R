variant=9
data = read.csv("data/spotify_data.csv")
variant_variable=variant%%10+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
print(paste("This variant data column is", colnames(data)[variant_variable]))