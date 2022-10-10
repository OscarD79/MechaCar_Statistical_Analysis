library(dplyr)

# Deliverable 1: Linear Regression to predict MPG 

# import csv file
# 
MechaCar_mpg <- read.csv(file='./Data/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# perform linear regression using the lm() Function
# 
# 
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
Mecha_lm

# view using summary
summary(Mecha_lm)

# view R-Squared
summary(Mecha_lm)$r.squared

# Deliverable 2: Summary Statistics on Suspension Coils
# import csv file

Suspension_Coil <- read.csv(file='./Data/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Create a summary table for suspension coils
total_summary <- Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# View by logs using group_by 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

# t test
# level of significance is .05

# Ho: mu = 1500
# Ha: mu <> 1500
t.test(Suspension_Coil$PSI, mu=1500)

# analysis - p-value is greater than 0.05 therefore fail to reject Ho


# t.test by lots
# lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

