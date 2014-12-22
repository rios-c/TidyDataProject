TidyDataProject
===============

#Project Assignment Code.
##Activity - Categorical variable describing the 6 different activities ( e.g. standing, sitting, walking, walking uptairs, walking downstairs, and laying)
##ActivityCode - integer values describing the different activities. Also a categorical variable.
1.	WALKING
2.	WALKING_UPSTAIRS
3.	WALKING_DOWNSTAIRS
4.	SITTING
5.	STANDING
6.	LAYING
## Subject - Variable identifying the different subject participating in the study.
## BodyAccelerationMeanInX - Numerical variable describing the mean value in body acceleration in X
## BodyAccelerationMeanInY	 - Numerical variable describing the mean value in body acceleration in Y
## BodyAccelerationMeanInZ	 - Numerical variable describing the mean value in body acceleration in Z
## BodyAccelerationStandardDeviationInX	- Numerical variable describing the standard deviation of the body acceleration in X
## BodyAccelerationStandardDeviationInY	- Numerical variable describing the standard deviation of the body acceleration in Y
## BodyAccelerationStandardDeviationInZ	- Numerical variable describing the standard deviation of the body acceleration in Z

# The values selected will give the average movement if the subject.  All other values are not being considered for the analysis.

# Code description - Description is also contained in run_analysis.R code as comments.
1. Read test data
2. Read training data
3. Read feature and activity factors
4. Reformat the features labels
5. Add columns names to the test data
6. Label test data Activity 
7. Add columns names to the train data
8. Label training data Activity
9. concatenate the two datasets to a master dataset.
10. Extract or subset data columns of interest.
11. Save tidy dataset
