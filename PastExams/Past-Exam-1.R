# Table Problem
mtbe <- read.csv("MTBE.csv")
mtbe

tab <- with(mtbe, table(WellClass, Aquifier))
addmargins(tab)

tab2 <- with(mtbe, table(WellClass, `MTBE.Detect`))
addmargins(tab2)

# Z Outliers
epa <- read.csv("EPAGAS.csv")
mpg <- epa$MPG

z <- scale(mpg) # z <- (mpg - mean(mpg)) / sd(mpg) 

poss_outliers <- epa[abs(z) > 2 & abs(z) < 3,] # 
poss_outliers

# Amount that is not an outlier
(length(mpg) - length(epa[abs(z) > 3])) / length(mpg)

# One sd away from the mean 
mean(mpg) + sd(mpg)









