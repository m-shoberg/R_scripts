library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
#add new vector field rate to murders data structure
murders <- mutate(murders, rate=total / population * 10^5)

#pipe function of murders data, first we "stratify" our group using the filter operator
#next, the pipe function is used again to determine min, med, max murder rates in Western region
s <- murders %>%
  filter(region == "West") %>%
  summarize(minimum = min(rate),
            median = median(rate),
            maximim = max(rate))
s

#accessing the components with the accessor $
s$minimum
s$median
s$maximim

# average murder rate NOT adjusted for population size
mean(murders$rate)

#average murder rate adjusted for population size
us_murder_rate <- murders %>%
  summarise(rate = sum(total) / sum(population) * 10^5)
us_murder_rate