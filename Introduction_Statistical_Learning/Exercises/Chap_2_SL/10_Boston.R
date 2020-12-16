graphics.off()          # clear the plots
rm(list = ls())         # reset the workspace 
setwd("~/R_Projects")   # set working directory

library(MASS)
boston = Boston

print(summary(Boston))

pairs(boston)