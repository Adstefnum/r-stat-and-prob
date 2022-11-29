source('hw_1/data/data2.R')

#population mean point estimate
mu = mean(x)
mu

#population variance point estimate
var_ha = var(x)
var_ha

# 95% confidence interval for 
#the population mean of heights if the population variance is unknown
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
#the population variance of heights if the population mean is unknown.
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
