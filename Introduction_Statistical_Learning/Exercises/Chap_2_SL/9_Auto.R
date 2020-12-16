graphics.off()          # clear the plots
rm(list = ls())         # reset the workspace 
setwd("~/R_Projects")   # set working directory

auto =read.csv("Introduction_Statistical_Learning/Given_Material/AISL_dataSets/Auto.csv",
               header=T,
               na.strings = "?")
attach(auto)
cylinders = as.factor(cylinders)
origin    = as.factor(origin)
#print summary of data
cat("Summary of data: \n")
print(summary(auto))

cat("The range of horsepower; ", range(auto$horsepower,na.rm=TRUE),"\n")
cat("The standard deviation of horsepower; ", sd(horsepower,na.rm=TRUE),"\n")

cat("The range of weight; ", range(auto$weight),"\n")
cat("The standard deviation of weight; ", sd(auto$weight),"\n")

#remove values from data set 
#hey = slice(auto,-c(3:89))

pairs(auto[,1:7])

detach(auto)


