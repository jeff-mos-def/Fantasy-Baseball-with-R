# File:     World Series winners_2003_2012
# Project:  Learning RStudio with Fantasy Baseball Stats

#Purpose of this set will be to use characters and matricies to compare and work with WS games data

rm(list = ls()) 
#Clear list, if still populated

NL <- c("FLA","STL","HOU","STL","COL","PHI","PHI","SFG","STL","SFG")
AL <- c("NYY","BOS","CHW","DET","BOS","TBR","NYY","TEX","TEX","DET")
Winner <- c("NL","AL","AL","NL","NL","NL","AL","NL","NL","NL")
N.Games <- c(6,4,4,5,4,5,6,5,7,4)
Year <- 2003:2012

#Created vectors for NL,AL,Winners,Number of games played, and Year.
#Houston Astros moved to the AL in 2013, hence the inclusion into the NL character set.

results <- matrix(c(NL,AL),10,2)
#Matrix created to show matchups over the years

dimnames(results)[[1]] <- Year
dimnames(results)[[2]] <- c("NL Team","AL Team")
results
#Gave dimension names to years and teams for clarity.

table(Winner)
#Tabled data of winner/loser from NL/AL.

barplot(table(Winner))
#Simple barplot of AL/NL winner/loser.

table(NL)
#Tabled data of NL WS representatives. This data is automatically listed alphabetically.

NL2 <- factor(NL, levels=c("FLA","PHI","HOU","STL","COL","SFG"))

str(NL2)

table(NL2)
#Table is now structured in terms of level defined.

World.Series <- list(Winner=Winner, Number.Games=N.Games, Seasons="2003 to 2012")
World.Series[[2]]
World.Series$Number.Games
World.Series["Number.Games"]
#Created a list of numbers of games played in each series with a defined number of games played

N.Games
Winner
table(Winner)
barplot(table(Winner))
by(N.Games,Winner,summary)
#Verifying data and creating a summary table.

source("World.Series.R", echo=TRUE)

hr.rates <- function(age,hr,ab){
  rates <- round(100*hr/ab,1)
  list(x=age,y=rates)
}
#Setting fuction for Micky Mantle's HR rates over age.

source("hr.rates.R")

list.files()
setwd(~/R)
