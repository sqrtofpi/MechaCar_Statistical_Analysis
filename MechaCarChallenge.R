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