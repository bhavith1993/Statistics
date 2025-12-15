# Lesson 9: two-sample categorical data

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)
View(substance_abuse)

# Is the distribution of SUDx the same for both men
# and women?

t <- table(substance_abuse$Gender, 
           substance_abuse$SUDx)

t

chisq.test(t)



