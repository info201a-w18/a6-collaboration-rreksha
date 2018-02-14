# Reksha Rathnam 
# Anant Rajeev 
# Nicole Bohra
# 2/12/18 
# INFO 201 HW 6 

library("knitr")
library("dplyr")

info <- read.csv('data/intro-survey.csv')

# Summary Statistics Description 
mean.program.exp <- round(summarise(info, mean(programming_exp)), digits = 2) 
from.washington <- count(filter(info, washington_born == "Yes"))
windows.count <- count(filter(info, os == "Windows"))
mac.count <- count(filter(info, os == "Mac OS X"))
coffee.max <- summarise(info, max(coffee_cups))
seahawks.superfans <- count(filter(info, seahawks_fan == "Yes"))
percent.info.interest <- round((count(filter(info, info_interest == "Yes"))) / (count(info)), digits = 1) * 100

# Response Statistics Table 
# First Visualization 
# Second Visualization 
