# Reksha Rathnam 
# Anant Rajeev 
# Nicole Bohra
# 2/12/18 
# INFO 201 HW 6 

# install.packages("ggplot2")

library("knitr")
library("dplyr")
library("ggplot2")
library("kableExtra")


info <- read.csv('data/intro-survey.csv')

# Summary Statistics Description 

#### Response Statistics Table ####

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
