#define variables for quadratic formula
a <- 2
b <- -1
c <- -4

solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

print(solution_1)
print(solution_2)

vector1 <- c(10, 10, 13, 34, 33)
vector2 <- c(20, 22, 11, 52, 90)
print(vector1 + vector2)

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

hour <- time/60
print(hour)

speed <- (distance/time)*60
print(speed)
