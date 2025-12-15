# Lesson 4: two-sample confidence intervals

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file1 <- here("data", "AB_testing.xlsx")
AB_testing <- read_excel(file1)
file2 <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file2)

View(AB_testing)

AB_testing |> 
  group_by(product) |> 
  summarize(avg_rating = mean(rating))

t.test(rating ~ product, data = AB_testing)

t.test(rating ~ product, 
       data = AB_testing,
       var.equal = TRUE)

View(substance_abuse)

t.test(DLA_improvement ~ Program, 
       data = substance_abuse,
       conf.level = .99)




