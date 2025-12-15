# Lesson 7: two-sample binary data

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "attrition1.xlsx")
attrition1 <- read_excel(file)
View(attrition1)

# Question 1: Is attrition different in the two 
# departments? 

table(attrition1$Department)
table(attrition1$Department,
      attrition1$Attrition)

prop.test(c(133, 92), c(961, 446))


# Question 2: Is attrition different among employees
# who travel frequently?

table(attrition1$BusinessTravel)
# 266 travel frequently.
# 1407 - 266 = 1141 do not

table(attrition1$Attrition,
      attrition1$BusinessTravel)

# Of those who travel frequently, 65 left
# Of those who don't, 160 left

prop.test(c(65, 160), c(266, 1141))



