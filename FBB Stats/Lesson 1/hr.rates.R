# File:     hr.rates.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#Purpose of this set will be to use this file as a source for another function read.

hr.rates <- function(age,hr,ab){
  rates <- round(100*hr/ab, 1)
  list(x=age,y=rates)
}

#Saved and stored for source() test.
