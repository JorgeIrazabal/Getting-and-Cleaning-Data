# Getting-and-Cleaning-Data

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## run_analysis.R

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

