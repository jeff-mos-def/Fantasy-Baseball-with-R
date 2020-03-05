# File:     Spahn_Data_Cont.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#History of Warren Spahn, pitcher and coach for the New York Mets.
#Focus is on changing directories and working with row, column calls.
#https://en.wikipedia.org/wiki/Warren_Spahn

spahn <- read.csv("spahn.csv")

getwd
getwd()
setwd("~/R/baseball_R-master/data")
spahn <- read.csv("spahn.csv")
#Sets directory and places spahn.csv into the global environment.

spahn[1:3,1:10]
#Displays first three rows and first ten columns.

spahn[1,]
#Displays all columns and only the first row.

spahn[1:10, c("Age","W","L","ERA")]
#Call first ten rows (years) of career for given stats.

summary(spahn$ERA)
#Summary of Spahn's stats over career.

spahn$Age[spahn$ERA==min(spahn$ERA)]
#Read as, "What age was Spahn when he had his lowest ERA throughout a season?"

spahn$FIP <- with(spahn, (13*HR+3*BB-2*SO)/IP)
#Added FIP, field independent pitching, as a variable. 
#Fielding Independent Pitching measures what a player's ERA would look like
#over a given period of time if the pitcher were to have experienced league
#average results on balls in play and league average timing.

pos <- order(spahn$FIP)
head(spahn[pos, c("Year","Age","W","L","ERA","FIP")])
#Note on this, a great FIP will be ~3.15 to a bad FIP at ~5.00.
#Spahn had his best season at season 8, but played for two separate cities.
#Next will be the breakdown of city-to-city FIP.

spahn1 <- subset(spahn, Tm == "BSN" | Tm == "MLN")
#This subset isolates each team that Spahn played for, Boston and Milwaulkee.

spahn1$Tm <- factor(spahn1$Tm, levels=c("BSN","MLN"))

by(spahn1[, c("W.L","ERA","WHIP","FIP")], spahn1$Tm, summary)
#Things to note, in Boston, ERA was between 2.97 and 3.297. In Milwaulkee, ERA
#was between 2.757 and 3.17. However, FIP was lower in Boston, possibly due to 
#a weaker defense or was "unlucky" with hits.

