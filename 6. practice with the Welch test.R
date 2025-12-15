# Lesson 6: practice with the Welch test

library(tidyverse)
library(here)
library(readxl)
library(modeldata)
theme_set(theme_minimal())

file1 <- here("data", "attrition1.xlsx")
attrition1 <- read_excel(file1)
file2 <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file2)

View(attrition1)

# Problem 1: a 95% CI for the difference in monthly income
# between departments

t.test(MonthlyIncome ~ Department, 
       data = attrition1)


# Problem 2: Is the average monthly rate different between
# departments?

t.test(MonthlyRate ~ Department,
       data = attrition1, 
       mu = 0)


# One final example: DLA improvement in treatment vs
# usual care groups in the substance abuse data set

View(substance_abuse)

t.test(DLA_improvement ~ Program, 
       data = substance_abuse,
       mu = 0)



