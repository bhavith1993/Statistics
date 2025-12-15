# Lesson 5: two-sample confidence intervals

library(tidyverse)
library(here)
library(readxl)
library(modeldata)
theme_set(theme_minimal())

file <- here("data", "attrition1.xlsx")
attrition1 <- read_excel(file)
View(attrition1)

attrition1 |> 
  group_by(Department) |> 
  summarize(avg_age = mean(Age))

t.test(Age ~ Department, 
       data = attrition1)

