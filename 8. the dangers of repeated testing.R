# Lesson 8: the dangers of repeated testing

# A simulation of 10 samples of a binary variable, 
# each of size 100:
set.seed(3)
yesses <- rbinom(10, 100, .3)
yesses

prop.test(c(28, 24), c(100, 100))
prop.test(c(24, 41), c(100, 100))
