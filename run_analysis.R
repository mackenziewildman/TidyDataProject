#Getting and Cleaning Data
#Course Project
#Mackenzie Wildman
#1/22/17

#input all data ###############################################################
#each row gives a 561-feature vector with time and frequency domain variables
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt")
testX <- read.table("./UCI HAR Dataset/test/X_test.txt")
#corresponding labels for features
featureslabels <- read.table("./UCI HAR Dataset/features.txt")

#which activity was performed in each window
#range: 1-6
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
#corresponding activity labels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#which subject performed each window
#range: 1-30
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#merge data horizontally ######################################################
#set variable names using featureslabels
names(trainX) <- featureslabels[,2]
names(testX) <- featureslabels[,2]

#add activity
trainX$activitynum <- trainy[,1]
testX$activitynum <- testy[,1]
#convert activity numbers to labels
trainX$activity <- activitylabels[trainX$activitynum,2]
testX$activity <- activitylabels[testX$activitynum,2]

#add subject
trainX$subject <- trainsubject[,1]
testX$subject <- testsubject[,1]

#merge train and test data ####################################################
mergedData <- rbind(trainX, testX)

#find features (variable names) containing any mention of mean or standard deviation
summarycolumns <- grep("([Mm]ean)|([Ss]td)",names(mergedData))
#subset on these columns plus activity and subject
tidydata <- mergedData[,c(563,564,summarycolumns)]

#make summary data ############################################################
library(reshape2) #for dcast

#melt data
datamelt <- melt(tidydata, id=c("subject","activity"))

#reshape data, summarize by mean
summarydata <- dcast(datamelt, subject + activity ~ variable, mean)
