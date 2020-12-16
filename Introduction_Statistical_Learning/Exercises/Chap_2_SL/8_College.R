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

#pairs(college[,2:10]) #get glimpse into data attempt

Private=as.factor(Private) # change Private to qualitative
plot(Private, Outstate, xlab="Private", ylab="Out-of-state")    # plot graph

#add Elite column
Elite = rep("No",nrow(college)) # creates "No" Novector with length nrow(college)
Elite[Top10perc>50]="Yes"
Elite = as.factor(Elite)
college = data.frame(college,Elite)
plot(Elite, Outstate, xlab ="Elite", ylab ="Out-of-state") 

# plot a couple his
par(mfrow=c(2,2))
hist(Apps)
hist(Expend)
hist(S.F.Ratio)
Grad.Rate[Grad.Rate>100]=100
hist(Grad.Rate)

