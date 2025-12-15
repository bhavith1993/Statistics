# Lesson 13: practice with correlation and regression

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "mpg_2008.xlsx")
mpg_2008 <- read_excel(file)

View(mpg_2008)

ggplot(mpg_2008, aes(x = cty, 
                     y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE)

cor.test(mpg_2008$cty, mpg_2008$hwy)

lm(hwy ~ cty, data = mpg_2008)
# Equation: hwy = .2388 + 1.39 * cty

# Predicting hwy when cty = 24
.2388 + 1.39 * 24



