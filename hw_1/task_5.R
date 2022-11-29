source('hw_1/data/data2.R')

#𝐻0: 𝜇 = 𝜇0
#𝐻1: 𝜇 < 𝜇0 (for odd and not prime variant number)
t.test(x,mu=9,conf.level=0.95,alternative='two.sided')