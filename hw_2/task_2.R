source("hw_2/data/data2.R")

model = lm(y~x, data=data)
model
lines(x, predict(model))

#task 3
summary(model)$r.squared

#task 4
eps = model$residuals
hist(eps, prob = TRUE)
x = seq(-50, 50, by=0.1)
p = dnorm(x, mean = mean(eps), sd = sd(eps))
x = seq(-50, 50, by=0.1)
lines(x,p)

#task 5
plot(model, 2)