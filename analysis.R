
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
