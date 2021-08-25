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

# The Suspension_Coil.csv file is imported and read into a dataframe


# An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots


# An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot


# There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually
# Included in README.md