# Code Book
This code book describes the data set stored in "result.txt" file.
The data set can be read using the following command:
    read.table("./result/tidy_data_set.txt")

## Description
This data set is a result of preparation of the final assignment for Coursera's "Getting and Cleaning Data" course. It was derived from the data that can be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The data set is grouped by activity and subject and contains mean values of each variable.

## Variables
activity  -- activity name. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject_id  -- id of a subject              

Other variables are the means of corresponding signals grouped by activity and sunject_id:
tBodyAcc_mean_X           
tBodyAcc_mean_Y           
tBodyAcc_mean_Z           
tGravityAcc_mean_X        
tGravityAcc_mean_Y        
tGravityAcc_mean_Z        
tBodyAccJerk_mean_X       
tBodyAccJerk_mean_Y       
tBodyAccJerk_mean_Z       
tBodyGyro_mean_X          
tBodyGyro_mean_Y          
tBodyGyro_mean_Z          
tBodyGyroJerk_mean_X      
tBodyGyroJerk_mean_Y      
tBodyGyroJerk_mean_Z      
tBodyAccMag_mean_         
tGravityAccMag_mean_      
tBodyAccJerkMag_mean_     
tBodyGyroMag_mean_        
tBodyGyroJerkMag_mean_    
fBodyAcc_mean_X           
fBodyAcc_mean_Y           
fBodyAcc_mean_Z           
fBodyAccJerk_mean_X       
fBodyAccJerk_mean_Y       
fBodyAccJerk_mean_Z       
fBodyGyro_mean_X          
fBodyGyro_mean_Y          
fBodyGyro_mean_Z          
fBodyAccMag_mean_         
fBodyBodyAccJerkMag_mean_ 
fBodyBodyGyroMag_mean_    
fBodyBodyGyroJerkMag_mean_
tBodyAcc_std_X            
tBodyAcc_std_Y            
tBodyAcc_std_Z            
tGravityAcc_std_X         
tGravityAcc_std_Y         
tGravityAcc_std_Z         
tBodyAccJerk_std_X        
tBodyAccJerk_std_Y        
tBodyAccJerk_std_Z        
tBodyGyro_std_X           
tBodyGyro_std_Y           
tBodyGyro_std_Z           
tBodyGyroJerk_std_X       
tBodyGyroJerk_std_Y       
tBodyGyroJerk_std_Z       
tBodyAccMag_std_          
tGravityAccMag_std_       
tBodyAccJerkMag_std_      
tBodyGyroMag_std_         
tBodyGyroJerkMag_std_     
fBodyAcc_std_X            
fBodyAcc_std_Y            
fBodyAcc_std_Z            
fBodyAccJerk_std_X        
fBodyAccJerk_std_Y        
fBodyAccJerk_std_Z        
fBodyGyro_std_X           
fBodyGyro_std_Y           
fBodyGyro_std_Z           
fBodyAccMag_std_          
fBodyBodyAccJerkMag_std_  
fBodyBodyGyroMag_std_     
fBodyBodyGyroJerkMag_std_