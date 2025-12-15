# Lesson 18: practice with categorical variables

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)

treatment <- filter(substance_abuse, 
                    Program == "Intervention")

View(substance_abuse)

t <- table(substance_abuse$MHDx,
           substance_abuse$SUDx)

chisq.test(t)

ggplot(treatment, aes(x = SUDx,
                      y = DLA_improvement)) +
  geom_boxplot() +
  geom_jitter()

m <- aov(DLA_improvement ~ SUDx, data = treatment)
summary(m)

TukeyHSD(m)



