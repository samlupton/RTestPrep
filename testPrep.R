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

getwd()
#gives option to find document
ddt <- read.csv(file.choose())
head(ddt,3)

ddt[c("LENGTH", "WEIGHT")]
#$ means column
#the comma just means that it is searching for every row, 
#and it will give you every column with that given argument
ddtcat <- ddt[ddt$SPECIES == "CCATFISH",]
ddtcat
#names of variables inside of ddt table(qualitative and quantitative)
names(ddt)
#summary inspects the class of the ddt dataframe object
summary(ddt)

ddt[ddt$LENGTH > 48 & ddt$WEIGHT > 1200,]
#searches through the ddt dataframe and if a row contains lmbass or trm,
#it returns all of the columns that meets the arguments.
ddt[ddt$SPECIES == "LMBASS" | ddt$RIVER == "TRM",]

library(dplyr)
#puts the ddt argument into filter by piping(pause)
dplyrcat <- ddt %>% filter(SPECIES == "CCATFISH")
dplyrcat

#practice on how to use pipelining

#1
ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarize(mean_WEIGHT = mean(WEIGHT))
#2
ddt %>% filter(SPECIES == "CCATFISH" & DDT > 33) %>% summarize(mean_LENGTH = mean(LENGTH))

ddt%>% filter(SPECIES == "LMBASS" | SPECIES == "SMBUFFALO") %>% summarize(sd_DDT = sd(DDT))

ddt %>% filter(LENGTH > 40 & WEIGHT > 1000)

ddt %>% filter(SPECIES == "LMBASS" & LENGTH > 30)

ddt %>% filter(LENGTH > 49 & LENGTH < 50)

ddt %>% filter(LENGTH > 49 & WEIGHT < 1200)

l <-ddt$WEIGHT
z <- (l-mean(l))/sd(l)
z
#how to find outliers
l[abs(z) > 3]

#how to find possible outliers
l[abs(z) < 3 & abs(z) > 2]
