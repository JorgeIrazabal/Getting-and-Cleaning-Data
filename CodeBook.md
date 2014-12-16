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
