---
title: "Course Project Code Book"
author: "Ale Burrola"
date: "Sunday, March 22, 2015"
output: html_document
---
## Variables:

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

    * tBodyAcc-XYZ
    * tGravityAcc-XYZ
    * tBodyAccJerk-XYZ
    * tBodyGyro-XYZ
    * tBodyGyroJerk-XYZ
    * tBodyAccMag
    * tGravityAccMag
    * tBodyAccJerkMag
    * tBodyGyroMag
    * tBodyGyroJerkMag
    * fBodyAcc-XYZ
    * fBodyAccJerk-XYZ
    * fBodyGyro-XYZ
    * fBodyAccMag
    * fBodyAccJerkMag
    * fBodyGyroMag
    * fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

    * mean(): Mean value
    * std(): Standard deviation
    * mad(): Median absolute deviation 
    * max(): Largest value in array
    * min(): Smallest value in array
    * sma(): Signal magnitude area
    * energy(): Energy measure. Sum of the squares divided by the number of values. 
    * iqr(): Interquartile range 
    * entropy(): Signal entropy
    * arCoeff(): Autorregresion coefficients with Burg order equal to 4
    * correlation(): correlation coefficient between two signals
    * maxInds(): index of the frequency component with largest magnitude
    * meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    * skewness(): skewness of the frequency domain signal 
    * kurtosis(): kurtosis of the frequency domain signal 
    * bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    * angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    * gravityMean
    * tBodyAccMean
    * tBodyAccJerkMean
    * tBodyGyroMean
    * tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'. There are 561 variables in total.

The original data may be downloaded from: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.

## Data:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

A full description of the variables is available at the site where the data was obtained: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

## Transformations for Data Cleaning:

The criteria for the tidy data is the following:

You should create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set:
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The complete tidy data includes 180 observations - information summarized for 30 subjects and 6 activities - with 88 variables - one column for subject, another one for the activities, and the rest correspond to the filtered columns which include mean and standard direction.

The 86 variables for mean and standard direction are the following:

    * angle(tBodyAccMean,gravity)
    * angle(tBodyAccJerkMean),gravityMean)
    * angle(tBodyGyroMean,gravityMean)
    * angle(tBodyGyroJerkMean,gravityMean)
    * angle(X,gravityMean)
    * angle(Y,gravityMean)
    * angle(Z,gravityMean)
    * tBodyAcc-mean()-X
    * tBodyAcc-mean()-Y
    * tBodyAcc-mean()-Z
    * tGravityAcc-mean()-X
    * tGravityAcc-mean()-Y
    * tGravityAcc-mean()-Z
    * tBodyAccJerk-mean()-X
    * tBodyAccJerk-mean()-Y
    * tBodyAccJerk-mean()-Z
    * tBodyGyro-mean()-X
    * tBodyGyro-mean()-Y
    * tBodyGyro-mean()-Z
    * tBodyGyroJerk-mean()-X
    * tBodyGyroJerk-mean()-Y
    * tBodyGyroJerk-mean()-Z
    * tBodyAccMag-mean()
    * tGravityAccMag-mean()
    * tBodyAccJerkMag-mean()
    * tBodyGyroMag-mean()
    * tBodyGyroJerkMag-mean()
    * fBodyAcc-mean()-X
    * fBodyAcc-mean()-Y
    * fBodyAcc-mean()-Z
    * fBodyAcc-meanFreq()-X
    * fBodyAcc-meanFreq()-Y
    * fBodyAcc-meanFreq()-Z
    * fBodyAccJerk-mean()-X
    * fBodyAccJerk-mean()-Y
    * fBodyAccJerk-mean()-Z
    * fBodyAccJerk-meanFreq()-X
    * fBodyAccJerk-meanFreq()-Y
    * fBodyAccJerk-meanFreq()-Z
    * fBodyGyro-mean()-X
    * fBodyGyro-mean()-Y
    * fBodyGyro-mean()-Z
    * fBodyGyro-meanFreq()-X
    * fBodyGyro-meanFreq()-Y
    * fBodyGyro-meanFreq()-Z
    * fBodyAccMag-mean()
    * fBodyAccMag-meanFreq()
    * fBodyBodyAccJerkMag-mean()
    * fBodyBodyAccJerkMag-meanFreq()
    * fBodyBodyGyroMag-mean()
    * fBodyBodyGyroMag-meanFreq()
    * fBodyBodyGyroJerkMag-mean()
    * fBodyBodyGyroJerkMag-meanFreq()
    * tBodyAcc-std()-X
    * tBodyAcc-std()-Y
    * tBodyAcc-std()-Z
    * tGravityAcc-std()-X
    * tGravityAcc-std()-Y
    * tGravityAcc-std()-Z
    * tBodyAccJerk-std()-X
    * tBodyAccJerk-std()-Y
    * tBodyAccJerk-std()-Z
    * tBodyGyro-std()-X
    * tBodyGyro-std()-Y
    * tBodyGyro-std()-Z
    * tBodyGyroJerk-std()-X
    * tBodyGyroJerk-std()-Y
    * tBodyGyroJerk-std()-Z
    * tBodyAccMag-std()
    * tGravityAccMag-std()
    * tBodyAccJerkMag-std()
    * tBodyGyroMag-std()
    * tBodyGyroJerkMag-std()
    * fBodyAcc-std()-X
    * fBodyAcc-std()-Y
    * fBodyAcc-std()-Z
    * fBodyAccJerk-std()-X
    * fBodyAccJerk-std()-Y
    * fBodyAccJerk-std()-Z
    * fBodyGyro-std()-X
    * fBodyGyro-std()-Y
    * fBodyGyro-std()-Z
    * fBodyAccMag-std()
    * fBodyBodyAccJerkMag-std()
    * fBodyBodyGyroMag-std()
    * fBodyBodyGyroJerkMag-std()

note: comments in this CodeBook were extracted from the information in the original README and features_info files from the UCI HAR files, as well as from the instructions to the Getting and Cleaning Data Course Project.

