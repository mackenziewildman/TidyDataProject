# CodeBook
Getting and Cleaning Data

Course Project

Mackenzie Wildman

1/22/17

## CodeBook adapted from:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit� degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## ID Variables
* subject - Indicates who carried out the experiment, subjects are labeled 1-30
* activity - Indicates which activity is carried out, labeled "WALKING
 WALKING_UPSTAIRS
 WALKING_DOWNSTAIRS
 SITTING
 STANDING
 LAYING
"

## Measurement Variables ("Features")

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals and retained in the summarydata data set are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

All features are normalized and bounded within [-1,1].

The following variables are included in the data set summarydata averages for each subject, activity pair:
"3" "tBodyAcc-mean()-X"
"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tBodyAcc-std()-X"
"7" "tBodyAcc-std()-Y"
"8" "tBodyAcc-std()-Z"
"9" "tGravityAcc-mean()-X"
"10" "tGravityAcc-mean()-Y"
"11" "tGravityAcc-mean()-Z"
"12" "tGravityAcc-std()-X"
"13" "tGravityAcc-std()-Y"
"14" "tGravityAcc-std()-Z"
"15" "tBodyAccJerk-mean()-X"
"16" "tBodyAccJerk-mean()-Y"
"17" "tBodyAccJerk-mean()-Z"
"18" "tBodyAccJerk-std()-X"
"19" "tBodyAccJerk-std()-Y"
"20" "tBodyAccJerk-std()-Z"
"21" "tBodyGyro-mean()-X"
"22" "tBodyGyro-mean()-Y"
"23" "tBodyGyro-mean()-Z"
"24" "tBodyGyro-std()-X"
"25" "tBodyGyro-std()-Y"
"26" "tBodyGyro-std()-Z"
"27" "tBodyGyroJerk-mean()-X"
"28" "tBodyGyroJerk-mean()-Y"
"29" "tBodyGyroJerk-mean()-Z"
"30" "tBodyGyroJerk-std()-X"
"31" "tBodyGyroJerk-std()-Y"
"32" "tBodyGyroJerk-std()-Z"
"33" "tBodyAccMag-mean()"
"34" "tBodyAccMag-std()"
"35" "tGravityAccMag-mean()"
"36" "tGravityAccMag-std()"
"37" "tBodyAccJerkMag-mean()"
"38" "tBodyAccJerkMag-std()"
"39" "tBodyGyroMag-mean()"
"40" "tBodyGyroMag-std()"
"41" "tBodyGyroJerkMag-mean()"
"42" "tBodyGyroJerkMag-std()"
"43" "fBodyAcc-mean()-X"
"44" "fBodyAcc-mean()-Y"
"45" "fBodyAcc-mean()-Z"
"46" "fBodyAcc-std()-X"
"47" "fBodyAcc-std()-Y"
"48" "fBodyAcc-std()-Z"
"49" "fBodyAcc-meanFreq()-X"
"50" "fBodyAcc-meanFreq()-Y"
"51" "fBodyAcc-meanFreq()-Z"
"52" "fBodyAccJerk-mean()-X"
"53" "fBodyAccJerk-mean()-Y"
"54" "fBodyAccJerk-mean()-Z"
"55" "fBodyAccJerk-std()-X"
"56" "fBodyAccJerk-std()-Y"
"57" "fBodyAccJerk-std()-Z"
"58" "fBodyAccJerk-meanFreq()-X"
"59" "fBodyAccJerk-meanFreq()-Y"
"60" "fBodyAccJerk-meanFreq()-Z"
"61" "fBodyGyro-mean()-X"
"62" "fBodyGyro-mean()-Y"
"63" "fBodyGyro-mean()-Z"
"64" "fBodyGyro-std()-X"
"65" "fBodyGyro-std()-Y"
"66" "fBodyGyro-std()-Z"
"67" "fBodyGyro-meanFreq()-X"
"68" "fBodyGyro-meanFreq()-Y"
"69" "fBodyGyro-meanFreq()-Z"
"70" "fBodyAccMag-mean()"
"71" "fBodyAccMag-std()"
"72" "fBodyAccMag-meanFreq()"
"73" "fBodyBodyAccJerkMag-mean()"
"74" "fBodyBodyAccJerkMag-std()"
"75" "fBodyBodyAccJerkMag-meanFreq()"
"76" "fBodyBodyGyroMag-mean()"
"77" "fBodyBodyGyroMag-std()"
"78" "fBodyBodyGyroMag-meanFreq()"
"79" "fBodyBodyGyroJerkMag-mean()"
"80" "fBodyBodyGyroJerkMag-std()"
"81" "fBodyBodyGyroJerkMag-meanFreq()"
"82" "angle(tBodyAccMean,gravity)"
"83" "angle(tBodyAccJerkMean),gravityMean)"
"84" "angle(tBodyGyroMean,gravityMean)"
"85" "angle(tBodyGyroJerkMean,gravityMean)"
"86" "angle(X,gravityMean)"
"87" "angle(Y,gravityMean)"
"88" "angle(Z,gravityMean)"
