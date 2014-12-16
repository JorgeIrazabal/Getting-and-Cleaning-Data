# Merge train and the test data to create one data frame, naming the columns
mergeData <- function (type,colName) {
        trainData <- read.table(paste("./data/UCI HAR Dataset/train/",type,"_train.txt",sep=""),col.names=colName,stringsAsFactors=F,sep="")
        testData <- read.table(paste("./data/UCI HAR Dataset/test/",type,"_test.txt",sep=""),col.names=colName,stringsAsFactors=F,sep="")
        allData <- rbind(trainData,testData)        
        return(allData)
}

# if a directory called "data" not exists, create it, download the file data and unsip
if (!file.exists("data")) {
        # Create a directory to downloada the data
        dir.create("data")
        # Download de data in the directory
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        print("Downloading data")
        download.file(fileUrl,destfile="./data/proyectDataset.zip")        
        # Unzip the data
        print("Unziping data")
        unzip("./data/pLoad royectDataset.zip", exdir="data")
        # remove the zip file
        file.remove("./data/proyectDataset.zip")

}

print("Loading data")
# load the feature file with 
featData <- read.table("./data/UCI HAR Dataset/features.txt")

# load the data files, and merge then
allxData <- mergeData("x",featData$V2)

# load the label files, and merge then
allyData <-  mergeData("y","activity")

# load the subject files, and merge then
allsubjectData <-  mergeData("subject","id")

print("Merging data")
# merge all data in one data frame
allData <- cbind(allsubjectData,allyData,allxData)

# clean the data to obtain only the mean and standard deviation
finalData <- allData[,c(1,2,grep("std", colnames(allData)), grep("mean", colnames(allData)))]

# replace ... for . in columns names
names(finalData) <- gsub("...", ".", names(finalData),fixed=TRUE)

# save the final data
write.table(finalData, './data/result.txt', row.names=FALSE )

# The next code is from obtain the file of the step 5
## Uses descriptive activity names to name the activities in the data set
#activityData <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
#
## Here are de final data with activity names
#finalData$activity <- as.character(factor(finalData$activity, levels=activityData$V1, labels=activityData$V2))
#
## Calculate means
#meanData <- aggregate(x=finalData, by=list(activity=finalData$activity, id=finalData$id), FUN=mean)
#
## eliminate duplicated columns activity (the code) and id
#meanData <- meanData[ -c(3:4) ]
#
## save the final data
#write.table(meanData, './data/meanData.txt' ,row.names=FALSE )
