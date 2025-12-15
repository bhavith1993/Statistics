# Lesson 16: More anova

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "mpg_2008.xlsx")
mpg_2008 <- read_excel(file)
View(mpg_2008)

mpg_2008 |> 
  group_by(drv) |> 
  summarize(mean(hwy))

ggplot(mpg_2008, aes(x = drv, y = hwy)) + 
  geom_boxplot(outlier.shape = NA) +
  geom_jitter()

model <- aov(hwy ~ drv, data = mpg_2008)
summary(model)

TukeyHSD(model)

mpg_r4 <- filter(mpg_2008, drv != "f")
t.test(mpg_r4$hwy ~ mpg_r4$drv)






