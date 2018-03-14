
library(effects)
library(car)

data(swiss)
summary(swiss)
# pairs(swiss)
scatterplotMatrix(swiss)

mod <- lm(Fertility ~ ., data = swiss)
summary(mod)


plot(Effect("Education", mod))
plot(Effect("Catholic", mod))

op <- par(mfrow=c(2,2))
plot(mod)
par(op)

cor(swiss)

apply(swiss, 2, function(x)c(mean = mean(x), sd = sd(x), median = median(x), iqr = IQR(x)))
