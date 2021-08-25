load (dplyr)

## DELIVERABLE 1 ##

# The MechaCar_mpg.csv file is imported and read into a dataframe
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# An RScript is written for a linear regression model to be performed on all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)

# An RScript is written to create the statistical summary of the linear regression model with the intended p-values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))

# Summary that addresses all three questions
# Included in README.md

## DELIVERABLE 2 ##

# The Suspension_Coil.csv file is imported and read into a dataframe
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually
# Included in README.md

## DELIVERABLE 3 ##

# An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
t.test(sus_coil$PSI, mu = 1500)

# An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
t.test(Lot1$PSI, mu = 1500)

Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
t.test(Lot2$PSI, mu = 1500)

Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')
t.test(Lot3$PSI, mu = 1500)

# There is a summary of the t-test results across all manufacturing lots and for each lot
# Included in README.md