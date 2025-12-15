# Lesson 1: introduction

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)
View(substance_abuse)

substance_abuse |> 
  filter(Program == "Intervention") |> 
  group_by(SUDx) |> 
  summarize(avg_improvement = mean(DLA_improvement))

substance_abuse |> 
  filter(Program == "Intervention") |> 
  ggplot(aes(x = SUDx, y = DLA_improvement)) + 
  geom_jitter(width = .35)


  
  
  
  
  