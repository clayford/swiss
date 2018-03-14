data(swiss)
summary(swiss)
pairs(swiss)

mod <- lm(Fertility ~ ., data = swiss)
summary(mod)

library(effects)

plot(Effect("Education", mod))
plot(Effect("Catholic", mod))

op <- par(mfrow=c(2,2))
plot(mod)
par(op)
