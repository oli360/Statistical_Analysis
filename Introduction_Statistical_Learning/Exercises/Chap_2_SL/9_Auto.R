graphics.off()          # clear the plots
rm(list = ls())         # reset the workspace 
setwd("~/R_Projects")   # set working directory

college =read.csv("Introduction_Statistical_Learning/Given_Material/AISL_dataSets/College.csv")
rownames(college)=college[,1]
college=college[,-1]
attach(college)