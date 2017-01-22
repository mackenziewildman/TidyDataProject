# TidyDataProject
Getting and Cleaning Data

Course Project

Mackenzie Wildman

1/22/17

## Data source
* Human Activity Recognition Using Smartphones Dataset
* To run run_analysis.R, this data must be stored in the folder "UCI HAR Dataset" in the working directory, as downloaded from the assignment description page

## Analysis

### Data input
* Input measurement data from both trainX.txt and testX.txt into trainX and testX
* Input corresponding activities from y_train.txt and y_test.txt into trainy and testy
* Input corresponding subjects from subject_train.txt and subject_test.txt into trainsubject and testsubject
* Input key of labels for measurements from features.txt into featureslabels
* Input key of labels for activities from activity_labels.txt into activitylabels

### Merge data horizontally
For both the train and test data sets, separately:
* Set measurement variable names in trainX and testX data frames from featureslabels
* Add activity numbers variable to both trainX and testX data frames from trainy and testy
* Convert activity numbers to activity labels in both trainX and testX data frames using activitylabels as key
* Add subject variable to both trainX and testX data frames from trainsubject and testsubject

### Merge data vertically and make tiny data set
* Merge trainX and testX to make mergedData data frame
* Find measurement variable names containing mean or std
* Extract these variables along with subject and activity variables to make tinydata data frame

### Create summary data set
* Melt tinydata data frame (reshape2 package) using subject and activity variables as id
* Reshape data frame using dcast, taking the mean of each measurement variable for each fixed subject, activity pair

## To import summary data set
read.table("./summarydata.txt", header=TRUE)
