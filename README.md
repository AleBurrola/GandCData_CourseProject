---
title: "Course Project"
author: "Ale Burrola"
date: "Sunday, March 22, 2015"
output: html_document
---

In order for the run() function to work properly, the following must be taken into account:

a) No arguments are necessary to execute the run() function - just type run().

b) The source for the run() function is run_analysis.R.

c) The files containing the required data sets should be in your working directory:
    * features.txt
    * activity_labels.txt
    * y_test.txt
    * subject_test.txt
    * X_test.txt
    * y_train.txt
    * subject_train.txt
    * X_train.txt
    
d) The following libraries are requiered, so their packages should be previously installed:
  
```{r}
library(gdata)
library(dplyr)
library(reshape)
```

e) Project Criteria:

    You should create one R script called run_analysis.R that does the following:

  1. Merges the training and the test sets to create one data set:
    
      This criteria is met in step 1 of the "GLOBAL data set" section of the run_analysis function. 
      Several middle processes had to be executed to deliver the whole data frame: sections "generic vectors", "necessary libraries", "TEST data frame" and "TRAIN data frame"

  2. Extracts only the measurements on the mean and standard deviation for each measurement.

    This criteria is met in steps 4 and 5 of the "TEST data frame" section, and step 4 of the "TRAIN data frame" section.

  3. Uses descriptive activity names to name the activities in the data set

    This criteria is met in step 7 of the "TEST data frame" section, and step 6 of the "TRAIN data frame" section.

  4. Appropriately labels the data set with descriptive variable names. 

    This criteria is met in steps 3 of both "TEST data frame" and "TRAIN data frame" sections.

  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    This criteria is met in steps 2, 3 and 4 of the "GLOBAL data frame" section.
    

note: see Data and Cleaning Course Project instructions for further detail.