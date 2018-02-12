# Reksha Rathnam 
# Anant Rajeev 
# Nicole Bohra
# 2/12/18 
# INFO 201 HW 6 

library("dplyr")

info <- read.csv('data/intro-survey.csv')

# Summary Statistics Description 
mean.program.exp <- summarise(info, mean(ï..programming_exp))

# Response Statistics Table 
# First Visualization 
# Second Visualization 
