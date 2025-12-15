# Lesson 15: introducing ANOVA

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "attrition1.xlsx")
attrition1 <- read_excel(file)
file2 <- here("data", "mpg_2008.xlsx")
mpg_2008 <- read_excel(file2)
View(attrition1)

attrition1 |> 
  group_by(WorkLifeBalance) |> 
  summarize(mean(MonthlyRate))

ggplot(attrition1, aes(x = WorkLifeBalance,
                       y = MonthlyRate)) +
  geom_boxplot() 

model <- aov(MonthlyRate ~ WorkLifeBalance, 
             data = attrition1)
summary(model)





