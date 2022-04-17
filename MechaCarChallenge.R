library(dplyr)

### DELIVERABLE 1 ###

MechaCar_mpg <- read.csv(file="data/MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

# Perform linear regression that predicts the mpg

linear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

summary(linear)


### DELIVERABLE 2 ###

Suspension_Coil <- read.csv(file='data/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

total_summary.to


lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary


### DELIVERABLE 3 ###

# Calculate Independent (Two Sample) T-Test

lot1 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
mean(lot1[['PSI']])

lot2 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
mean(lot2[['PSI']])

lot3 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')
mean(lot3[['PSI']])


# Determine if the PSI across all manufacturing lots is statistically different from the pop mean of 1,500 PSI

t.test(Suspension_Coil$PSI, mu = 1500)

t.test(lot1$PSI, mu = 1500) 

t.test(lot2$PSI, mu = 1500)

t.test(lot3$PSI, mu = 1500)


