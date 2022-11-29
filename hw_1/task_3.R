
source('hw_1/data/data.R')

#######Task 3
#Mean point estimate
mu_hat = mean(x)
mu_hat

#standard deviation point estimate
sigma_hat = sd(x)
sigma_hat

#####Non parametric Hypothesis testing(chi-square test)
s = 2
n = length(x)

#define the number of intervals
k = 6
#define the endpoints of the range
ranges = range(x)
a_1 = ranges[1]
a_n = ranges[2]

# array of intervals' endpoints
bin = seq(a_1, a_n, length.out = k+1)
bin

# statistical array
table(cut(x, breaks = bin, right = F))

# Observed frequencies and the histogram
O = hist(x, breaks = bin, plot = T, right = F, prob = T)$counts

# Normal distribution density curve
curve(dnorm(x, mu_hat, sigma_hat), add = TRUE)

bin1 = c(-Inf, bin[2:k], Inf)
bin1

p = c(pnorm(bin1[1:k+1],mu_hat,sigma_hat)-pnorm(bin1[0:k],mu_hat,sigma_hat))
p
sum(p)

E = n*p
E

Chi_sq_test = sum((O-E)^2/E)
Chi_sq_test

#significance level
alpha = 0.05
#Critical value
qchisq(1-alpha,df = k-s-1) 
