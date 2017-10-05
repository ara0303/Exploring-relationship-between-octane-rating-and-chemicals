setwd("E:/Spring 2017/Regression/project")
reg <- read.csv('regression proj.csv')
octR <- reg[,2]
x1 <- reg[,1]
fit <- plot(octR ~ x1)
model <- lm(octR ~ x1)
model
abline(model)
plot(model)
termplot(model)
res <- residuals(model)
resdf <- data.frame(res)
resdf
head(residuals(model))
plot(res)
Anova <- aov(octR ~ x1)
anova(model)
summary(model)
