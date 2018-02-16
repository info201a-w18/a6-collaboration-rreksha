# Reksha Rathnam 
# Anant Rajeev 
# Nicole Bohra
# 2/12/18 
# INFO 201 HW 6 

# install.packages("ggplot2")

library("knitr")
library("dplyr")
library("ggplot2")


info <- read.csv('data/intro-survey.csv')

# Summary Statistics Description 

#### Response Statistics Table ####

# First Visualization

# Second Visualization
info <- filter(info, coffee_cups < 80000)
ggplot(data = info) + 
  geom_point(mapping = aes(x = seahawks_fan, y = coffee_cups, color = washington_born)) +
  xlab("Seahawks Fan") +
  ylab("Coffee Cups") +
  ggtitle("Coffee Cups vs. Seahawks Fans vs. Born in Washington")