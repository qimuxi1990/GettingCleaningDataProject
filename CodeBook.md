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
Raw data is collected from UCI Machine Learning Repository<br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Notes on the original (raw) data 
 - Measure data: X_*.txt in test and train folders
 - Activity data: y_*.txt in test and train folders
 - Subject data: subject_*.txt in test and train folders
 - Measture descriptive name: features.txt
 - Activity descriptive name: activity_label.txt
 - Explaination files: features_info.txt, README.txt
 - Detail data: Inertial Signals folders, not used

## Creating the tidy datafile

### Guide to create the tidy data file
 - 0. Load data from X\_*.txt, y\_*.txt, subject\_*.txt, features.txt and activity\_label.txt using read.table()
 - 1. Merges the training and the test sets to create one data set, using rbind() and cbind()
 - 2. Extracts only the measurements on the mean and standard deviation for each measurement, by selecting features with mean() or std() in their names
 - 3. Uses descriptive activity names to name the activities in the data set, using data loaded from activity_label.txt
 - 4. Appropriately labels the data set with descriptive variable names, using data loaded from feature.txt and selected indices generated in Step 2
 - 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject, using melt(), dcast(), and dataset generated from Step 4
 - 6. Save to txt file using write.table()

### Cleaning of the data
Cleaning the raw data to get a tidy data set with the average of each mean or std measure for each activity and each subject. [link to the readme document that describes the code in greater detail](/README.md)

## Description of the variables in the tiny_data.txt file
Data can be loaded in R using <code>dataset <- read.table("data.txt")</code><br>
General description of the file including:
 - Dimensions of the dataset: <code>dim(dataset)</code>
 - Summary of the data: <code>summary(dataset)</code>
 - Variables present in the dataset: <code>colnames(dataset)</code>

### activity_name
Name of Activity

Some information on the variable including:
 - Class of the variable: factor
 - Unique values/levels of the variable: WALKING WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 - Unit of measurement: none
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

#### Notes on variable 1:
(activity_name, subject_label) pair forms the primary key of this table.

## Sources
 - library(data.table)
 - library(plyr)
 - library(reshape2)
