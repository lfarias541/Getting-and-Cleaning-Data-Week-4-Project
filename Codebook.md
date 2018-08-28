#CODEBOOK
This code book describes the structure and the variables of the data set " tidyavgset.txt", resulting from executing the "run_analysis.R" script.
Raw data were colected from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Full description of the raw data is available here : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The script performs the following steps 
1.	Reading in the files and merging the training and the test sets to create one data set.
2.	Extracting only the measurements on the mean and standard deviation for each measurement
3.	Using descriptive activity names to name the activities in the data set
4.	Appropriately labeling the data set with descriptive variable names
5.	Creating a second, independent tidy data set with the average of each variable for each activity and each subject

The resulting data frame is composed of 180 observations (rows) and 73 variables (columns). There are 6 subjects, with 30 observations each. 
Variables 
-	subjectID: id of the subject
-	activityID: id of the activity (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.)
The next variables are the mean and the standard deviation of the measurements made by a accelerometer an a gyroscope every time de subject moved. 
-	tBodyAccmeanX
-	tBodyAccmeanY
-	tBodyAccmeanZ
-	tBodyAccstdX
-	tBodyAccstdY
-	tBodyAccstdZ
-	tGravityAccmeanX
-	tGravityAccmeanY
-	tGravityAccmeanZ
-	tGravityAccstdX
-	tGravityAccstdY
-	tGravityAccstdZ
-	tBodyAccJerkmeanX
-	tBodyAccJerkmeanY
-	tBodyAccJerkmeanZ
-	tBodyAccJerkstdX
-	tBodyAccJerkstdY
-	tBodyAccJerkstdZ
-	tBodyGyromeanX
-	tBodyGyromeanY
-	tBodyGyromeanZ
-	tBodyGyrostdX
-	tBodyGyrostdY
-	tBodyGyrostdZ
-	tBodyGyroJerkmeanX
-	tBodyGyroJerkmeanY
-	tBodyGyroJerkmeanZ
-	tBodyGyroJerkstdX
-	tBodyGyroJerkstdY
-	tBodyGyroJerkstdZ
-	tBodyAccMagmean
-	tGravityAccMagmean
-	tBodyAccJerkMagmean
-	tBodyGyroMagmean
-	tBodyGyroJerkMagmean
-	fBodyAccmeanX
-	fBodyAccmeanY
-	fBodyAccmeanZ
-	fBodyAccstdX
-	fBodyAccstdY
-	fBodyAccstdZ
-	fBodyAccmeanFreqX
-	fBodyAccmeanFreqY
-	fBodyAccmeanFreqZ
-	fBodyAccJerkmeanX
-	fBodyAccJerkmeanY
-	fBodyAccJerkmeanZ
-	fBodyAccJerkstdX
-	fBodyAccJerkstdY
-	fBodyAccJerkstdZ
-	fBodyAccJerkmeanFreqX
-	fBodyAccJerkmeanFreqY
-	fBodyAccJerkmeanFreqZ
-	fBodyGyromeanX
-	fBodyGyromeanY
-	fBodyGyromeanZ
-	fBodyGyrostdX
-	fBodyGyrostdY
-	fBodyGyrostdZ
-	fBodyGyromeanFreqX
-	fBodyGyromeanFreqY
-	fBodyGyromeanFreqZ
-	fBodyAccMagmean
-	fBodyAccMagmeanFreq
-	fBodyBodyAccJerkMagmean
-	fBodyBodyAccJerkMagmeanFreq
-	fBodyBodyGyroMagmean
-	fBodyBodyGyroMagmeanFreq
-	fBodyBodyGyroJerkMagmean
-	fBodyBodyGyroJerkMagmeanFreq
-	activityType
