variant=29 #write down your variant number instead of N
data = read.csv("defence/air_quality.csv")
variant_variable=variant%%12+1
x=data[((variant-1)*100+1):(variant*100),variant_variable]
print(paste("This variant data column is", colnames(data)[variant_variable]))


# 95% confidence interval for 
#the population mean of values if the population variance is unknown
x_bar=mean(x)
gamma=0.95
alpha=1-gamma
n=length(x)
s=sd(x)
tp=qt(1-alpha/2,n-1)
left=x_bar-s*tp/sqrt(n)
left
right=x_bar+s*tp/sqrt(n)
right

# 95% confidence interval for 
#the population variance of values if the population mean is unknown.
n=length(x)
gamma=0.95
alpha=1-gamma
S2=var(x)
chi2p_left=qchisq(1-alpha/2,n-1)
chi2p_right=qchisq(alpha/2,n-1)
left=(n-1)*S2/chi2p_left
left
right=(n-1)*S2/chi2p_right
right