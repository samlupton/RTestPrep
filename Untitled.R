data(swiss)
swiss1 <- swiss
set.seed(123)
swiss1$REG <- rep(c("Region A", "Region B", "Region C"), length.out = nrow(swiss1))
head(swiss1)
str <- sampler::ssamp(df = swiss1, n = 30, strata = REG)
str
print(str)
#adfafdasadsfasf

