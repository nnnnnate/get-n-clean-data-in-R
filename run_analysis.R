
setwd("./Downloads/")

## [Task_1] Merges the training and the test sets to create one data set.

# read train data and add subject & ativity col in the dataframe
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")  # put subject info
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")   # put activity info
train <- cbind(subjectTrain, activityTrain, train) 

# read test data and add subject & ativity col in the dataframe
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
test <- cbind(subjectTest, activityTest, test)

merged <- rbind(train, test)  # merge train and test datasets

# add colnames to each variable
features <- read.table("./UCI HAR Dataset/features.txt")
colName <- c("subject", "activity", as.character(features[,2]) )
colnames(merged) <- colName

rm(subjectTrain, subjectTest, activityTrain, activityTest,features, colName)

################################################################################
    
## [Task_2] Extracts only the measurements on the mean and standard deviation for each measurement.
    
meanNstd <- merged[,grepl("subject|activity|mean|std" , names(merged))]

################################################################################

## [Task_3] Uses descriptive activity names to name the activities in the data set

activityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt", colClasses = "character")
for (i in 1:dim(activityLabel)[1]){
    meanNstd[,2] <- sub(i, activityLabel[i,2], meanNstd[,2],)
}
rm(i, activityLabel)

################################################################################

## [Task_4] Appropriately labels the data set with descriptive variable names.

colName_meanNstd <- names(meanNstd)

colName_meanNstd <- gsub("\\(\\)", "", colName_meanNstd)  # delete "(" and ")"
colName_meanNstd <- gsub("^f", "frequencyDomain", colName_meanNstd)
colName_meanNstd <- gsub("^t", "timeDomain", colName_meanNstd)
colName_meanNstd <- gsub("Acc", "Accelerometer", colName_meanNstd)
colName_meanNstd <- gsub("Gyro", "Gyroscope", colName_meanNstd)
colName_meanNstd <- gsub("Mag", "Magnitude", colName_meanNstd)
colName_meanNstd <- gsub("Freq", "Frequency", colName_meanNstd)
colName_meanNstd <- gsub("mean", "Mean", colName_meanNstd)
colName_meanNstd <- gsub("std", "StandardDeviation", colName_meanNstd)

colnames(meanNstd) <- colName_meanNstd
rm(colName_meanNstd)

################################################################################

## [Task_5] From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.

bySubActMean <- aggregate(meanNstd[,3:81], list(meanNstd$subject, meanNstd$activity), mean)
colnames(bySubActMean) <- c("Subject", "Activity", names(meanNstd)[3:81])

write.table(bySubActMean, "bySubActMean.txt", row.names = FALSE)
