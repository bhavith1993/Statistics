# Lesson 11: sample correlation

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)
View(substance_abuse)

treatment <- filter(substance_abuse,
                    Program == "Intervention")

ggplot(treatment, aes(x = DLA1, y = DLA2)) + 
  geom_point() # Linear
ggplot(treatment, aes(Age, y = DLA_improvement)) + 
  geom_point() # No association


set.seed(7)
x <- abs(rchisq(100, 10) - 2.7)
y <- 1/x + rnorm(100, 1, .1) - .9
qplot(x, y) 



set.seed(2)
x <- rnorm(100, 0, .5)
y <- 5*x * (x^2-1) + rnorm(100, 0, .8)
qplot(x, y)


cor(treatment$DLA1,
    treatment$DLA2)






# Correlation and sampling
set.seed(0)
cor(treatment$Age,
    treatment$DLA_improvement)
sample <- slice_sample(treatment, n = 25)
cor(sample$Age, sample$DLA_improvement)
ggplot(sample, aes(x = Age, y = DLA_improvement)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE,
              color = "grey")



