data(swiss)
swiss1 <- swiss
set.seed(123)
swiss1$REG <- rep(c("Region A", "Region B", "Region C"), length.out = nrow(swiss1))
head(swiss1)
str <- sampler::ssamp(df = swiss1, n = 30, strata = REG)
str
print(str)
#adfafdasadsf

fatal <- c(1,2,3,4,1,2,3,4,10,1,2,3,4,100, -1)
graphics.off()
b3 <- boxplot(fatal, range = 1.5, main = "plot", ylab = "y")
b3$out

