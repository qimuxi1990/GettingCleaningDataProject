---
title: "CodeBook for data.txt"
author: "Muxi Qi"
date: "Nov 15th, 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
Coursera Getting &amp; Cleaning Data Project 2015Fall John Hopkins

## Study design and data processing

### Collection of the raw data
Raw data is collected from [UCI Machine Learning Repository](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Notes on the original (raw) data 
 - Measure data: X\_\*.txt in test and train folders
 - Activity data: y\_\*.txt in test and train folders
 - Subject data: subject\_\*.txt in test and train folders
 - Measture descriptive name: features.txt
 - Activity descriptive name: activity\_label.txt
 - Explaination files: features_info.txt, README.txt
 - Detail data: Inertial Signals folders, not used

## Creating the tidy datafile

### Guide to create the tidy data file
 0. Load data from X\_\*.txt, y\_\*.txt, subject\_\*.txt, features.txt and activity\_label.txt using read.table()
 1. Merges the training and the test sets to create one data set, using rbind() and cbind()
 2. Extracts only the measurements on the mean and standard deviation for each measurement, by selecting features with mean() or std() in their names
 3. Uses descriptive activity names to name the activities in the data set, using data loaded from activity\_label.txt
 4. Appropriately labels the data set with descriptive variable names, using data loaded from feature.txt and selected indices generated in Step 2
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject, using melt(), dcast(), and dataset generated from Step 4
 6. Save to txt file using write.table()

### Cleaning of the data
Cleaning the raw data to get a tidy data set with the average of each mean or std measure for each activity and each subject. [link to the readme document that describes the code in greater detail](/README.md)

## Description of the variables in the tiny_data.txt file
Data can be loaded in R using <code>dataset <\- read.table("data.txt", header = TRUE)</code><br>
General description of the file including:
 - Dimensions of the dataset: 180 obs. of 68 variables. <code>dim(dataset)</code>
 - Summary of the data: <code>summary(dataset)</code>
 - Variables present in the dataset: <code>colnames(dataset)</code>

### activity\_name
Name of Activity
 - Class of the variable: factor
 - Unique values/levels of the variable: WALKING WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING
 - Unit of measurement: none

#### Notes on activity\_name:
(activity\_name, subject\_label) pair forms the primary key of this table.

### subject\_label
Label of subject
 - Class of the variable: num
 - Unique values/levels of the variable: 1:30
 - Unit of measurement: none

#### Notes on subject\_label:
(activity\_name, subject\_label) pair forms the primary key of this table.

### tBodyAcc-mean()-XYZ
Averages of tBodyAcc-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAcc: time domain body acceleration signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyAcc-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### tBodyAcc-std()-XYZ
Average of tBodyAcc-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAcc: time domain body acceleration signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyAcc-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tGravityAcc-mean()-XYZ
Average of tGravityAcc-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tGravityAcc: time domain gravity acceleration signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on tGravityAcc-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### tGravityAcc-std()-XYZ
Average of tGravityAcc-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tGravityAcc: time domain gravity acceleration signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on tGravityAcc-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### tBodyAccJerk-mean()-XYZ
Average of tBodyAccJerk-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccJerk: time domain body acceleration Jerk signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyAccJerk-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyAccJerk-std()-XYZ
Average of tBodyAccJerk-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccJerk: time domain body acceleration Jerk signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyAccJerk-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyro-mean()-XYZ
Average of tBodyGyro-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyro: time domain body angular velocity signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyGyro-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyro-std()-XYZ
Average of tBodyGyro-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyro: time domain body angular velocity signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyGyro-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroJerk-mean()-XYZ
Average of tBodyGyroJerk-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroJerk: time domain body angular velocity Jerk signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyGyroJerk-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroJerk-std()-XYZ
Average of tBodyGyroJerk-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroJerk: time domain body angular velocity Jerk signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on tBodyGyroJerk-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyAccMag-mean()
Average of tBodyAccMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccMag: Magnitude of time domain body acceleration signals; mean(): mean mesurement

#### Notes on tBodyAccMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyAccMag-std()
Average of tBodyAccMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccMag: Magnitude of time domain body acceleration signals; std(): standard deviation mesurement

#### Notes on tBodyAccMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tGravityAccMag-mean()
Average of tGravityAccMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tGravityAccMag: Magnitude of time domain gravity acceleration signals; mean(): mean mesurement

#### Notes on tGravityAccMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tGravityAccMag-std()
Average of tGravityAccMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tGravityAccMag: Magnitude of time domain gravity acceleration signals; std(): standard deviation mesurement

#### Notes on tGravityAccMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyAccJerkMag-mean()
Average of tBodyAccJerkMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccJerkMag: Magnitude of time domain body acceleration Jerk signals; mean(): mean mesurement

#### Notes on tBodyAccJerkMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyAccJerkMag-std()
Average of tBodyAccJerkMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyAccJerkMag: Magnitude of time domain body acceleration Jerk signals; std(): standard deviation mesurement

#### Notes on tBodyAccJerkMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroMag-mean()
Average of tBodyGyroMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroMag: Magnitude of time domain body angular velocity signals; mean(): mean mesurement

#### Notes on tBodyGyroMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroMag-std()
Average of tBodyGyroMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroMag: Magnitude of time domain body angular velocity signals; std(): standard deviation mesurement

#### Notes on tBodyGyroMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroJerkMag-mean()
Average of tBodyGyroJerkMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroJerkMag: Magnitude of time domain body angular velocity Jerk signals; mean(): mean mesurement

#### Notes on tBodyGyroJerkMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### tBodyGyroJerkMag-std()
Average of tBodyGyroJerkMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: tBodyGyroJerkMag: Magnitude of time domain body angular velocity Jerk signals; std(): standard deviation mesurement

#### Notes on tBodyGyroJerkMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAcc-mean()-XYZ
Averages of fBodyAcc-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAcc: frequency domain body acceleration signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyAcc-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### fBodyAcc-std()-XYZ
Average of fBodyAcc-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAcc: frequency domain body acceleration signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyAcc-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAccJerk-mean()-XYZ
Averages of fBodyAccJerk-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccJerk: frequency domain body acceleration Jerk signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyAccJerk-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### fBodyAccJerk-std()-XYZ
Average of fBodyAccJerk-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccJerk: frequency domain body acceleration Jerk signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyAccJerk-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyGyro-mean()-XYZ
Averages of fBodyGyro-mean()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyro: frequency domain body angular velocity signals; mean(): mean mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyGyro-mean()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair, splited in 3 columns

### fBodyGyro-std()-XYZ
Average of fBodyGyro-std()-XYZ
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyro: frequency domain body angular velocity signals; std(): standard deviation mesurement; XYZ: X, Y and Z directions

#### Notes on fBodyGyro-std()-XYZ:
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAccMag-mean()
Average of fBodyAccMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccMag: Magnitude of frequency domain body acceleration signals; mean(): mean mesurement

#### Notes on fBodyAccMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAccMag-std()
Average of fBodyAccMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccMag: Magnitude of frequency domain body acceleration signals; std(): standard deviation mesurement

#### Notes on fBodyAccMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAccJerkMag-mean()
Average of fBodyAccJerkMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccJerkMag: Magnitude of frequency domain body acceleration Jerk signals; mean(): mean mesurement

#### Notes on fBodyAccJerkMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyAccJerkMag-std()
Average of fBodyAccJerkMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyAccJerkMag: Magnitude of frequency domain body acceleration Jerk signals; std(): standard deviation mesurement

#### Notes on fBodyAccJerkMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyGyroMag-mean()
Average of fBodyGyroMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyroMag: Magnitude of frequency domain body angular velocity signals; mean(): mean mesurement

#### Notes on fBodyGyroMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyGyroMag-std()
Average of fBodyGyroMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyroMag: Magnitude of frequency domain body angular velocity signals; std(): standard deviation mesurement

#### Notes on fBodyGyroMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyGyroJerkMag-mean()
Average of fBodyGyroJerkMag-mean()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyroJerkMag: Magnitude of frequency domain body angular velocity Jerk signals; mean(): mean mesurement

#### Notes on fBodyGyroJerkMag-mean():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

### fBodyGyroJerkMag-std()
Average of fBodyGyroJerkMag-std()
 - Class of the variable: num
 - Unique values/levels of the variable: bounded within \[-1,1\]
 - Unit of measurement: none
 - Names Schema: fBodyGyroJerkMag: Magnitude of frequency domain body angular velocity Jerk signals; std(): standard deviation mesurement

#### Notes on fBodyGyroJerkMag-std():
Values are the average of raw data grouped by (activity\_name, subject\_label) pair

## Sources
 - package data.table <code>library(data.table)</code>
 - package plyr <code>library(plyr)</code>
 - package reshape2 <code>library(reshape2)</code>
