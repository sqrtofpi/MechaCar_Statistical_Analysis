# MechaCar_Statistical_Analysis
Module 15: Statistics and R

## Project Overview

Struggling with it's newest prototype the MechCar, AutosRUs' has enlisted our help to analyze production data to evaluate the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes 
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots 
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population 
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

- *Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*
  - Given that variance is a measure of how far observed values differ from the average of predicted values (which in this case is 0); there are 2 variables that provided a non-random amount of variance in the data as shown in the following image: ***vehicle_length*** and **ground_clearance** both were non-random sources of variation.

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/7421bede72ae3834de25be873cad296dbf5c27e9/Resources/Screen%20Shot%202021-08-25%20at%208.35.46%20AM.png)

- *Is the slope of the linear model considered to be zero? Why or why not?*
  - Since the p-value is 5.35e -11 which is very small, we reject the null hypothesis which was that the slope is equal to 0 and instead accept the alternative hypothesis that it is unequal to 0. This indicates there is not a significant relationship between the independent and dependent variables included within this dataset.

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/7421bede72ae3834de25be873cad296dbf5c27e9/Resources/Screen%20Shot%202021-08-25%20at%208.36.06%20AM.png)

- *Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?*
  - We conclude that the adjusted R-squared value of 0.6825 that the model is a relatively good predictor of mpg given the data set. We ideally would like the value to be as close to 1.0 as possible which would show strong predictive power but it it far closer to 1 than to 0 (a value of 0 would indicate a poor predictor of mpg prototypes).

## Summary Statistics on Suspension Coils

- *The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?*

#### Analysis of Total Suspension Coil Results:

The overall results for the variance of Suspension Coils meets the current manufacturing specification of 100 psi with the result of 62.3 psi (see results below):

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/7544ba999ef891cb4daa5274e108eecdb8725687/Resources/Screen%20Shot%202021-08-25%20at%2010.39.36%20AM.png)

#### Analysis of Lot by Lot Results for Suspension Coils:

The results on a lot by lot basis however had 1 lot significantly out of specification for the psi variance. This lot should have an 8D corrective action completed and any material left should be placed on hold to eliminate the possibility of it being used for additional vehicles. Due to 1 of the lots being found out of specification, the next several lots received should be scrutinized (inspected with greater frequency), see results below:

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/7544ba999ef891cb4daa5274e108eecdb8725687/Resources/Screen%20Shot%202021-08-25%20at%2010.39.54%20AM.png)

## T-Tests on Suspension Coils

- *Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.*

The results of the T-Test on all Suspension Coils indicated that we can accept the null hypothesis that the sample mean is equivalent to the population mean, see below for results:

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/23ae6b661680b664a47fb733a4511174586f5638/Resources/Screen%20Shot%202021-08-25%20at%2011.14.07%20AM.png)

The results of the T-Test on Lot 1 indicated that we can accept the null hypothesis that the sample mean is equivalent to the population mean, see below for results:

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/23ae6b661680b664a47fb733a4511174586f5638/Resources/Screen%20Shot%202021-08-25%20at%2011.14.18%20AM.png)

The results of the T-Test on Lot 2 also indicated that we can accept the null hypothesis that the sample mean is equivalent to the population mean, see below for results:

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/23ae6b661680b664a47fb733a4511174586f5638/Resources/Screen%20Shot%202021-08-25%20at%2011.14.36%20AM.png)

The results of the T-Test on Lot 3 indicated that we must reject the null hypothesis that the sample mean is equivalent to the population mean, see below for results:

![](https://github.com/sqrtofpi/MechaCar_Statistical_Analysis/blob/23ae6b661680b664a47fb733a4511174586f5638/Resources/Screen%20Shot%202021-08-25%20at%2011.14.45%20AM.png)

