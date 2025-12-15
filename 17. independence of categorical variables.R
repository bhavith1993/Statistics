# Lesson 17: independence of categorical variables

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "product_ratings.xlsx")
product_ratings <- read_excel(file)

View(product_ratings)

t <- table(product_ratings$age,
           product_ratings$product)

chisq.test(t)




