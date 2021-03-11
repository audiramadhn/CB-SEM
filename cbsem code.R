library(lavaan)
library(semPlot)

TEST1 <- read_excel("C:/Users/Bayu/Downloads/TEST1.xlsx")

path1 = 'PEU=~PEU1+PEU2+PEU3 
PUF=~PUF1+PUF2+PUF3 
R=~R1+R2+R3 
T=~T1+T2+T3+T4 
BIU=~BIU1+BIU2+BIU3
PUF~PEU
BIU~PEU+PUF+R+T'

cbsem1 = sem(path1, data = TEST1)
cbsem1 = sem(path1, data = TEST1, check.gradient = FALSE)
summary(cbsem1, standardized = TRUE)
modindices(cbsem1, sort. = TRUE)
discriminantValidity(cbsem1)
inspect(cbsem, what = "std")
inspect(cbsem, what = "r2")
fitmeasures(cbsem, c("chisq","df","gfi","agfi","nfi","cfi","rmsea","srmr"))
semPaths(cbsem1, "std")
