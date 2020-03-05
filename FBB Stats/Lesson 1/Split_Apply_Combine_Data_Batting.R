# File:     Split_Apply_Combine_Data_Batting.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#Purpose of this set will be to split, apply, and combine data using batting
#statistics.

Batting <- read.csv("Batting.csv")
getwd
getwd()
setwd("~/R/baseball_R-master/data")

#After restarting RStudio, I did not set my working directory. Changed WD to
#allow RS to read the batting data.

Batting <- read.csv("Batting.csv")

Batting.60 <- subset(Batting, yearID >= 1960 & yearID <= 1969)
#Created a subset function to look at batting stats in the 1960's.

compute.hr <- function(pid){
  d <- subset(Batting.60, playerID == pid)
  sum(d$HR)
}
#Computed total HRs and listed by player ID.

players <- unique(Batting.60$playerID)
S <- sapply(players, compute.hr)
#Vector S now contains the HR count for all players.

R <- data.frame(Player=players, HR=S)
R <- R[order(R$HR, decreasing = TRUE),]
head(R)
#Creates a data frame with player and HR total for players that played in the 60's.
