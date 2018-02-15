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
program.exp <- select(info,ï..programming_exp, cli_exp, vcs_exp, md_exp, r_exp, web_exp)

rank.num <- function(rank){
  rank.vector <- c((nrow(filter(program.exp, ï..programming_exp == rank))),
                   (nrow(filter(program.exp, cli_exp == rank))),
                   (nrow(filter(program.exp, vcs_exp == rank))),
                   (nrow(filter(program.exp, md_exp == rank))),
                   (nrow(filter(program.exp, r_exp == rank))),
                   (nrow(filter(program.exp, web_exp == rank))))
  return (rank.vector)
}


rank.one <- rank.num(1)
rank.two <- rank.num(2)
rank.three <- rank.num(3)
rank.four <- rank.num(4)
rank.five <- rank.num(5)

exp.data <- data.frame(rank.one, rank.two, rank.three, rank.four, rank.five)
names <- c("Program", "Commant_Line", "Version_Control", "Markdown", "R", "Web")
row.names(exp.data) <- names