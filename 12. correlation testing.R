# Lesson 12: correlation testing

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)

treatment <- filter(substance_abuse,
                    Program == "Intervention")
View(treatment)

ggplot(treatment, aes(x = DLA1, y = DLA2)) + 
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE,
              color = "grey")

cor.test(treatment$DLA2,
         treatment$DLA1)

ggplot(treatment, aes(x = Age, y = DLA_improvement)) + 
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE,
              color = "grey")

cor.test(treatment$Age,
         treatment$DLA_improvement)






