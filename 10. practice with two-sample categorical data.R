# Lesson 10: practice with two-sample categorical data

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())

file <- here("data", "substance_abuse.xlsx")
substance_abuse <- read_excel(file)
View(substance_abuse)

# Is the distribution of MHDx the same for people with 
# and without psych admits?

substance_abuse <- substance_abuse |> 
  mutate(psych_admit_yn = (PsychAdmit >= 1))

t <- table(substance_abuse$psych_admit_yn,
           substance_abuse$MHDx)
chisq.test(t)

