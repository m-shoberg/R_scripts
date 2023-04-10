library(dslabs)
data(heights)

s <- ifelse(heights$sex == "Female", 1, 2)
sum(s)

h <- ifelse(heights$height > 72, heights$height, 0)
mean(h)

inches_to_ft <- function(x){
  x/12
}

inches_to_ft(144)

sum(heights$height < 60)