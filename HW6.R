# Reksha Rathnam 
# Anant Rajeev 
# Nicole Bohra
# 2/12/18 
# INFO 201 HW 6 

library("dplyr")

info <- read.csv('data/intro-survey.csv')

# Summary Statistics Description 
mean.program.exp <- summarise(info, mean(ï..programming_exp)) 
from.washington <- count(filter(info, washington_born == "Yes"))
windows.count <- count(filter(info, os == "Windows"))
mac.count <- count(filter(info, os == "Mac OS X"))
coffee.max <- summarise(info, max(coffee_cups))
seahawks.superfans <- count(filter(info, seahawks_fan == "Yes!!!"))
percent.info.interest <- ((count(filter(info, info_interest == "Yes"))) / (count(info))) * 100

# Response Statistics Table 
# First Visualization 
# Second Visualization 
