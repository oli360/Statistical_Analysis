graphics.off()          # clear the plots
rm(list = ls())         # reset the workspace 
setwd("~/R_Projects")   # set working directory

college =read.csv("Introduction_Statistical_Learning/Given_Material/AISL_dataSets/College.csv")
rownames(college)=college[,1]
college=college[,-1]
attach(college)

#print summary of data
cat("Summary of data: \n")
print(summary(college))

pairs(college[,2:10]) #get glimpse into data attempt

Private=as.factor(Private) # change Private to qualitative
plot(Private, Outstate, xlab="Private", ylab="Out-of-state")    # plot graph

Elite =rep("No",nrow(college)) # creates "No" Novector with length nrow(college)
Elite[Top10perc>50]="Yes"
Elite=as.factor(Elite)
college =data.frame(college,Elite)


