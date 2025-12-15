# Lesson 13: linear regression

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file1 <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file1)
file2 <- here("data", "mpg_2008.xlsx")
mpg_2008 <- read_excel(file2)

View(substance_abuse)

treatment <- filter(substance_abuse,
                    Program == "Intervention")

ggplot(treatment, aes(x = DLA1, 
                      y = DLA2)) +
  geom_point() + 
  geom_smooth(method = "lm",
              se = FALSE,
              color = "grey")

lm(DLA2 ~ DLA1, data = treatment)

# Estimate DLA2 for a patient with DLA1 = 3.6
# DLA2 = .7243 + .9660 * DLA1
.7243 + .9660 * 3.6

summary(lm(DLA2 ~ DLA1, data = treatment))

View(mpg_2008)



