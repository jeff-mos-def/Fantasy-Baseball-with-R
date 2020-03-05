# File:     AL_NL_Batting.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#History of AL and NL batting statistics

NLbatting <- read.csv(("NLbatting.csv"))
ALbatting <- read.csv("ALbatting.csv")
batting <- rbind(NLbatting, ALbatting)
#Calls ALbatting and NLbatting records from CSV and binds the two together.

NLpitching <- read.csv("NLpitching.csv")
NL <- merge(NLbatting, NLpitching, by="Tm")
#Calls NLpitching and then merges batting into a team separated format.

NL.150 <- subset(NLbatting, HR>150)
#Reduces list of all teams down to 8 teams that have hit over 150 HRs.

