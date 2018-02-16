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
mean.program.exp <- round(summarise(info, mean(programming_exp)), digits = 2) 
from.washington <- count(filter(info, washington_born == "Yes"))
windows.count <- count(filter(info, os == "Windows"))
mac.count <- count(filter(info, os == "Mac OS X"))
coffee.max <- summarise(info, max(coffee_cups))
seahawks.superfans <- count(filter(info, seahawks_fan == "Yes"))
percent.info.interest <- round((count(filter(info, info_interest == "Yes"))) / (count(info)), digits = 1) * 100

# Response Statistics Table 

# First Visualization
ggplot(data = info) +
  geom_smooth(mapping = aes(x = programming_exp, y = cli_exp, color = "red")) +
  geom_smooth(mapping = aes(x = programming_exp, y = r_exp, color = "black")) + 
  geom_smooth(mapping = aes(x = programming_exp, y = web_exp, color = "blue")) + 
  xlab("Programming Experience") +
  ylab("Experience") +
  ggtitle("Overall Programming Experience vs Specific Experience") +
  scale_color_manual(labels = c("Web","R","Command Line"), values = c("red","black","blue"))

# Second Visualization
info <- filter(info, coffee_cups < 80000)
ggplot(data = info) + 
  geom_point(mapping = aes(x = seahawks_fan, y = coffee_cups, color = washington_born)) +
  xlab("Seahawks Fan") +
  ylab("Coffee Cups") +
  ggtitle("Coffee Cups vs. Seahawks Fans vs. Born in Washington")
  



