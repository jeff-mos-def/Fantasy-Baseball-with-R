# File:     Micky_Mantle_HR_Rates.R
# Project:  Learning RStudio with Fantasy Baseball Stats

#Purpose of this set will be to use characters and matricies to compare and work with MM's HR rate by age.

hr.rates <- function(age,hr,ab){
  rates <- round(100*hr/ab,1)
  list(x=age,y=rates)
}
#Setting fuction for Micky Mantle's HR rates over age.

source("hr.rates.R")
#Read the function into R using the source command.

hr <- c(13,23,21,27,39,52,34,42,31,40,54)
ab <- c(341,549,461,543,517,533,474,519,541,527,514)
age <- 19:29
HR.Rates <- hr.rates(age,hr,ab)
Mantle <- cbind(age,hr,ab,rate=HR.Rates$y)

write.csv(Mantle, "mantle.csv", row.names=FALSE)


#Establish vectors for testing.

hr.rates(age,hr,ab)

#Call on function with the established vectors.

plot(hr.rates(age,hr,ab))

#Plot the function using the plot command.

