df = read.csv("winequality-red.csv", sep = ";")
corTable = cor(df)
print(min(corTable[corTable>-1]))

corMat = matrix(corTable,ncol = 12)

x <- corMat[,9]
y <- corMat[,12]
relation <- lm(y~x)

print(summary(relation))

png(file = "scatterplot.png")

plot(x,y,
     col = "blue",
     cex = 1.3,
     pch = 16,
     main='Regression for YearsExperience and Salary',
     xlab='YearsExperience',ylab='Salary')

# plot a regression line
abline(lm(x~y),col='red')
abline(lm(y~x),col='green')

dev.off()