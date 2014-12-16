# Code Book

## Instruction List
Description of the steps of the run_analytis.R script:

1. Checks if exists the directory "data" in which the data will be stored

  1.1. If the directory not exists, create it
  
  1.2. Download the zip file
  
  1.3. Unzip the data
  
  1.4. Delete de zip file
  
2. Load the data from the train and test files, and merge in three data frames, using the mergeData function
  
  2.1. The X data, with the features.txt file data as column headers

  2.2. The Y data, with "activity" as column header

  2.3. The subject data, with "id" as column header
3. Merge three data frames into an unique data set
4. Clean the data to obtain only the mean and standard deviation columns
5. Rename columns to avoid "strange names", replacing "..." by "."
6. Save the result into the "result.csv" file in the "data" directory
7. Uses descriptive activity names to name the activities in the data set, through the "activity_labels.txt" file
8. Calculate means data by activity and id
9. Remove columns about the activity id
10. Save the result into the "meanData.csv" into "data" directory

## Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
*	'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
*	'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
*	'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
*	'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## Code book
### Mean and stardard deviation data
The mean and stardard deviation data are stored into the "result.csv" file, with 10.299 rows and 81 columns
In the "meanData.csv" file, with 180 rows and 82 columns, the mean data of the data from the "result.csv" are stored.
The strcuture of both file is the same, but in the fisrt file the "activity" field store a numeric identficiator, and in the second file, it store the description of the activity
The strucuture is the following:

| Variable | Description
-----------|-------------
| | Sequence
| id | Subject ID
| activity | The activity performed
| tBodyAcc.std.X | Standard deviation of time for acceleration of body for X direction
| tBodyAcc.std.Y | Standard deviation of time for acceleration of body for Y direction
| tBodyAcc.std.Z | Standard deviation of time for acceleration of body for Z direction
| tGravityAcc.std.X | Standard deviation of time of acceleration of gravity for X direction
| tGravityAcc.std.Y | Standard deviation of time of acceleration of gravity for Y direction
| tGravityAcc.std.Z | Standard deviation of time of acceleration of gravity for Z direction
| tBodyAccJerk.std.X | Standard deviation of time of body acceleration jerk for X direction
| tBodyAccJerk.std.Y | Standard deviation of time of body acceleration jerk for Y direction
| tBodyAccJerk.std.Z | Standard deviation of time of body acceleration jerk for Z direction
| tBodyGyro.std.X | Standard deviation of body gyroscope measurement for X direction
| tBodyGyro.std.Y | Standard deviation of body gyroscope measurement for Y direction
| tBodyGyro.std.Z | Standard deviation of body gyroscope measurement for Z direction
| tBodyGyroJerk.std.X | Standard deviation of jerk signal of body for X direction
| tBodyGyroJerk.std.Y | Standard deviation of jerk signal of body for Y direction
| tBodyGyroJerk.std.Z | Standard deviation of jerk signal of body for Z direction
| tBodyAccMag.std.. | Standard deviation of magnitude of body Acc
| tGravityAccMag.std.. | Standard deviation of gravity acceleration magnitude
| tBodyAccJerkMag.std.. | Standard deviation of magnitude of body acceleration jerk
| tBodyGyroMag.std.. | Standard deviation of magnitude of body gyroscope measurement
| tBodyGyroJerkMag.std.. | Standard deviation of magnitude of body body gyroscope jerk measurement
| fBodyAcc.std.X | Standard deviation of frequency of body acceleration for X direction
| fBodyAcc.std.Y | Standard deviation of frequency of body acceleration for Y direction
| fBodyAcc.std.Z | Standard deviation of frequency of body acceleration for Z direction
| fBodyAccJerk.std.X | Standard deviation frequency of body accerlation jerk for X direction
| fBodyAccJerk.std.Y | Standard deviation frequency of body accerlation jerk for Y direction
| fBodyAccJerk.std.Z | Standard deviation frequency of body accerlation jerk for Z direction
| fBodyGyro.std.X | Standard deviation frequency of body gyroscope measurement for X direction
| fBodyGyro.std.Y | Standard deviation frequency of body gyroscope measurement for Y direction
| fBodyGyro.std.Z | Standard deviation frequency of body gyroscope measurement for Z direction
| fBodyAccMag.std.. | Standard deviation of frequency of body acceleration magnitude
| fBodyBodyAccJerkMag.std.. | Standard deviation of frequency of body acceleration jerk magnitude
| fBodyBodyGyroMag.std.. | Standard deviation of frequency of magnitude of body gyroscope measurement
| fBodyBodyGyroJerkMag.std.. | Standard deviation frequency of magnitude of body gyroscope jerk measurement
| tBodyAcc.mean.X | Mean time for acceleration of body for X direction
| tBodyAcc.mean.Y | Mean time for acceleration of body for Y direction
| tBodyAcc.mean.Z | Mean time for acceleration of body for Z direction
| tGravityAcc.mean.X | Mean time of acceleration of gravity for X direction
| tGravityAcc.mean.Y | Mean time of acceleration of gravity for Y direction
| tGravityAcc.mean.Z | Mean time of acceleration of gravity for Z direction
| tBodyAccJerk.mean.X | Mean time of body acceleration jerk for X direction
| tBodyAccJerk.mean.Y | Mean time of body acceleration jerk for Y direction
| tBodyAccJerk.mean.Z | Mean time of body acceleration jerk for Z direction
| tBodyGyro.mean.X | Mean body gyroscope measurement for X direction
| tBodyGyro.mean.Y | Mean body gyroscope measurement for Y direction
| tBodyGyro.mean.Z | Mean body gyroscope measurement for Z direction
| tBodyGyroJerk.mean.X | Mean jerk signal of body for X direction
| tBodyGyroJerk.mean.Y | Mean jerk signal of body for Y direction
| tBodyGyroJerk.mean.Z | Mean jerk signal of body for Z direction
| tBodyAccMag.mean.. | Mean magnitude of body Acc  
| tGravityAccMag.mean.. | Mean gravity acceleration magnitude   
| tBodyAccJerkMag.mean.. | Mean magnitude of body acceleration jerk    
| tBodyGyroMag.mean.. | Mean magnitude of body gyroscope measurement 
| tBodyGyroJerkMag.mean.. | Mean magnitude of body body gyroscope jerk measurement
| fBodyAcc.mean.X | Mean value of body acceleration for X direction  
| fBodyAcc.mean.Y | Mean value of body acceleration for Y direction  
| fBodyAcc.mean.Z | Mean value of body acceleration for Z direction  
| fBodyAcc.meanFreq.X | Mean frequency of body acceleration for X direction    
| fBodyAcc.meanFreq.Y | Mean frequency of body acceleration for Y direction    
| fBodyAcc.meanFreq.Z | Mean frequency of body acceleration for Z direction    
| fBodyAccJerk.mean.X | Mean value of body accerlation jerk for X direction 
| fBodyAccJerk.mean.Y | Mean value of body accerlation jerk for Y direction 
| fBodyAccJerk.mean.Z | Mean value of body accerlation jerk for Z direction 
| fBodyAccJerk.meanFreq.X | Mean frequency of body accerlation jerk for X direction 
| fBodyAccJerk.meanFreq.Y | Mean frequency of body accerlation jerk for Y direction 
| fBodyAccJerk.meanFreq.Z | Mean frequency of body accerlation jerk for Z direction 
| fBodyGyro.mean.X | Mean value of body gyroscope measurement for X direction
| fBodyGyro.mean.Y | Mean value of body gyroscope measurement for Y direction
| fBodyGyro.mean.Z | Mean value of body gyroscope measurement for Z direction
| fBodyGyro.meanFreq.X | Mean frequency of body gyroscope measurement for X direction
| fBodyGyro.meanFreq.Y | Mean frequency of body gyroscope measurement for Y direction
| fBodyGyro.meanFreq.Z | Mean frequency of body gyroscope measurement for Z direction
| fBodyAccMag.mean.. | Mean value of body acceleration magnitude
| fBodyAccMag.meanFreq.. | Mean frequency of body acceleration magnitude
| fBodyBodyAccJerkMag.mean.. | Mean value of body acceleration magnitude
| fBodyBodyAccJerkMag.meanFreq.. | Mean frequency of body acceleration magnitude
| fBodyBodyGyroMag.mean.. | Mean value of magnitude of body gyroscope measurement
| fBodyBodyGyroMag.meanFreq.. | Mean frequency of magnitude of body gyroscope measurement
| fBodyBodyGyroJerkMag.mean.. | Mean value of magnitude of body gyroscope jerk measurement
| fBodyBodyGyroJerkMag.meanFreq.. | Mean frequency of magnitude of body gyroscope jerk measurement
