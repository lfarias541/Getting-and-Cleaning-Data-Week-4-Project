#Project Getting and cleaning Data
#Luis Fernando Arias
#run_analysis.R 

#You should create one R script called run_analysis.R that does the following.
#1.	Merges the training and the test sets to create one data set.
#2.	Extracts only the measurements on the mean and standard deviation for each measurement.
#3.	Uses descriptive activity names to name the activities in the data set
#4.	Appropriately labels the data set with descriptive variable names.
#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#Here are the data for the project:
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Merges the training and the test sets to create one data set.
setwd("C:\\Users\\lfari\\Desktop\\Getting and cleaning\\Project\\UCI HAR Dataset");


#  Import training and test data from files
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/Y_train.txt")
strain <- read.table("./train/subject_train.txt")
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/Y_test.txt")
stest <- read.table("./test/subject_test.txt")

# column names
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "activityID"
colnames(strain) <- "subjectID"        
colnames(xtest) <- features[,2]
colnames(ytest) <- "activityID"
colnames(stest) <- "subjectID"
colnames(activity_labels) <- c("activityID", "activityType")

# Merges the training and the test sets to create one data set.
xtotal <- rbind(xtrain, xtest)
ytotal <- rbind(ytrain, ytest)
stotal <- rbind(strain, stest)
finaldata <- cbind(xtotal, ytotal, stotal)

### Extracts only the measurements on the mean and standard deviation for each measurement.

colNames <- colnames(finaldata)
mean_and_std <- (grepl("activityID", colNames) |
                  grepl("subjectID", colNames) |
                  grepl("mean..", colNames) |
                  grepl("std...", colNames))
setforMeanandStd <- finaldata[ , mean_and_std == TRUE]

### Use descriptive activity names
       setnames<- merge(setforMeanandStd, activity_labels, by = "activityID", all.x = TRUE)

### Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
 tidyset <- aggregate(. ~subjectID + activityID, setnames, mean)
 tidyset <- tidyset[order(tidyset$subjectID, tidyset$activityID), ]
 write.table(tidyset, "tidyavgset.txt", row.names = FALSE)      