# Lesson 3: introducing two-sample testing

library(tidyverse)
library(here)
library(readxl)
theme_set(theme_minimal())
set.seed(27)

# rating <- sample(1:5, 27, replace = TRUE)
# product <- c(rep("A", 15), rep("B", 12))
# AB_testing <- data.frame(product, 
#                          rating)

file <- here("data", "AB_testing.xlsx")
AB_testing <- read_excel(file)
View(AB_testing)

AB_testing |> 
  group_by(product) |> 
  summarize(avg_rating = mean(rating))

AB_testing |> 
  group_by(product) |> 
  summarize(avg_rating = mean(rating)) |> 
  ggplot(aes(x = product, 
             y = avg_rating,
             fill = product)) + 
  geom_col() +
  scale_fill_brewer(palette = "Dark2") +
  theme(legend.position = "none") +
  labs(x = "Product",
       y = "Average rating")

# Do it 10000 times and plot the differences:

difference <- integer()
for (rep in 1:10000){
  rating <- sample(1:5, 27, replace = TRUE)
  difference[rep] <- mean(rating[1:15]) - mean(rating[16:27]) 
}
qplot(difference, binwidth = .2, xlab = "Difference in ratings")
