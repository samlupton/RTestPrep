v <- read.csv("SEEDLING.csv")
df <- v$Abundance
tt <- table(df, v$Type)
att <- addmargins(tt)
att 

14/51
#data <- read.csv("MTBE.csv")
#tab <- with(data, table(WellClass, `MTBE.Detect`))
#addmargins(tab)

#Question1
153/223

#Question2
70/223

#Question3
72/153

#Question4
48/223

#p(a|b)p(b) = p(b|a)p(a)

#bayes rule:

#P(A|B) = (P(A)P(B|A))/P(B)

#posterior, prior p(A), the likelihood(p(B|A)), and marginal(denominator)