data(swiss)
summary(swiss)
pairs(swiss)

mod <- lm(Fertility ~ ., data = swiss)
summary(mod)

library(effects)

plot(Effect("Education", mod))
plot(Effect("Catholic", mod))
