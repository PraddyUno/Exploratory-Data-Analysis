# Chapter 4: Exploratory Data Analysis
# Project 2: Titanic Exercise

library(titanic)
library(ggplot2)
library(tidyr)
# 1 - Check the structure of titanic



titanic<- read.csv("C:/Users/Pardeep/Documents/R/PardeepR/titanic_clean.csv")
str(titanic)


# 2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = pclass, fill = sex)) + 
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
# Remove NA columns from the facet variable 
titanic %>% drop_na(survived)

ggplot(titanic,aes(x = pclass, fill = sex)) + 
  geom_bar(position = "dodge") +
  facet_grid(. ~ survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, 
       aes(x = pclass, y = age, col = sex)) + 
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(. ~ survived)



