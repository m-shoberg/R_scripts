library(dslabs)
data(heights)
options(digits = 3) # report 3 significant digits for all answers

# Wanted to know value for avreage height
#average <- mean(heights$height) # 68.3 on the hights dataframe

#intent was to show only heights greater than average - retuned 1000 T/F statements - Not helpful
#heights %>% summarize(height > average)

#defines new vector whose value is a dataframe containing heights greater than average
greater_than_avg <- heights$height > mean(heights$height)

#logical class (T/F values)
#class(greater_than_avg)

#sums number of TRUE logical values
sum(greater_than_avg)

#sum with two conditions (height values beloging to a female is the additional condition)
sum(greater_than_avg & heights$sex =="Female")

#retuned the number (239) of TRUE fammale logical values
#sum(heights$sex == "Female", rm.na = TRUE)

mean(heights$sex == "Female")
#heights$height %>% summarize(minimum = min(height))

min_height <- min(heights$height)
min_height

#min_height is numeric class
class(min_height)

match(min_height, heights$height)

heights$sex[match(min_height, heights$height)]

max_height <- max(heights$height)
max_height

x <- 50:82
#how many values in dataset heights$height are not contained in x
sum(!x %in% heights$height)
#create new column ht_cm
ht_cm <- c(heights$height * 2.54)
#add ht_cm as a column to dataset heights
heights$ht_cm <- ht_cm

#update dataset
#heights2 <- heights

#determine average height in cm
average_ht_cm <- mean(heights2$ht_cm)
average_ht_cm
#create a data frame that filters height2 data for only females
#females <- data.frame(heights2$sex == "Female")
females <- filter(heights, sex == "Female")
#how many females are there in the heights data set
sum(heights2$ht_cm & heights2$sex == "Female")
#Give the mean height of females in cm
#there is an easier way to do this, see code few lines down
#mean_female_ht_cm <- mean(heights2$ht_cm & heights2$sex == "Female")
#s <- heights2 %>% filter(sex == "Female") %>% summarize(mean_height = mean(heights2$ht_cm))
mean(females$ht_cm)


