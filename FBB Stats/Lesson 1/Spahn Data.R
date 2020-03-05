# File:     Spahn Data.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#History of Warren Spahn, pitcher and coach for the New York Mets.
#https://en.wikipedia.org/wiki/Warren_Spahn

W <- c(8,21,15,21,21,22,14)
#Win total
L <- c(5,10,12,14,17,14,19)
#Loss total

Win.Pct <- 100*W/(W+L)
#Win percentage

Year <- seq(1946,1952)
#Sequence to designate years

Age <- Year-1921
#Age of Warren Spahn during the given years in this set

plot(Age,Win.Pct)
#Plot for win percentage as Warren got older

mean(Win.Pct)
#Mean of win percentage: 57.66%

100*sum(W)/(sum(W)+sum(L))
#Win percentage calculated by 100*(Wins/Wins+Losses)

sort(W)
#Sort wins from least to greatest

cumsum(W)
#Cumulative sum of wins through each season

summary(Win.Pct)
#Summary of win percentages

W[c(1,2,5)]
W[c(1:4)]
W[-c(1,6)]
#extraction/removal of vector portions

Win.Pct > 60
#Logical test for win percentage over 60%

(W>20)&(Win.Pct>60)
#Logical test for wins over 20 and win percentage over 60%

Win.Pct==max(Win.Pct)
#Logical test for highest wins in a season in data set

Year[Win.Pct==max(Win.Pct)]
#Call highest win year

Year[(W+L)>30]
#Years in which combined wins and losses were greater than 30 each year
