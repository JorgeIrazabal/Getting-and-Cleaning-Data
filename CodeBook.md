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
