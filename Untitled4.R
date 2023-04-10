library(dslabs)
data(olive)
head(olive)

x <- olive$palmitic
y <- olive$palmitoleic
plot(x,y)

z <- olive$eicosenoic
hist(z)

boxplot(palmitic ~ region, data = olive)