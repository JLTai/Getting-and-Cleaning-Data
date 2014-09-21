Getting-and-Cleaning-Data
=========================

Getting and Cleaning Data Course Project

This code uses the "Samsung data" extracted from the zip file with the folder containing all the data in the same working directory as run_analysis.R all data must stay in the respective folders.  The code analyses the provided data to form a New Data Set containing the mean of the provided data of the mean and standard deviation of various movements belonging to various subjects.  This data is analysed by Activity type and Subject ID.

Code Book:

"Subject_ID" = Subject ID as found in subject_xxx.txt
"Activity_Name"	= created from cross referencing y_xxx.txt with activity_labels.txt
"Activity_ID"	= original information from y_xxx.txt

The below are the mean of the recording of the mean recorded and all columns ending with -d- are representative of the mean of the standard deviation.  The letter at the end of each column name is the dimentional plane that the sensor was reading.

"Time-BodyAcc-mean-X" "Time-BodyAcc-mean-Y" "Time-BodyAcc-mean-Z" "Time-BodyAcc-sTime-d-X"	"Time-BodyAcc-sTime-d-Y"	"Time-BodyAcc-sTime-d-Z"	"Time-GraviTime-yAcc-mean-X"	"Time-GraviTime-yAcc-mean-Y"	"Time-GraviTime-yAcc-mean-Z"	"Time-GraviTime-yAcc-sTime-d-X"	"Time-GraviTime-yAcc-sTime-d-Y"	"Time-GraviTime-yAcc-sTime-d-Z"	"Time-BodyAccJerk-mean-X"	"Time-BodyAccJerk-mean-Y"	"Time-BodyAccJerk-mean-Z"	"Time-BodyAccJerk-sTime-d-X"	"Time-BodyAccJerk-sTime-d-Y"	"Time-BodyAccJerk-sTime-d-Z"	"Time-BodyGyro-mean-X"	"Time-BodyGyro-mean-Y"	"Time-BodyGyro-mean-Z"	"Time-BodyGyro-sTime-d-X"	"Time-BodyGyro-sTime-d-Y"	"Time-BodyGyro-sTime-d-Z"	"Time-BodyGyroJerk-mean-X"	"Time-BodyGyroJerk-mean-Y"	"Time-BodyGyroJerk-mean-Z"	"Time-BodyGyroJerk-sTime-d-X"	"Time-BodyGyroJerk-sTime-d-Y"	"Time-BodyGyroJerk-sTime-d-Z"	"Time-BodyAccMag-mean"	"Time-BodyAccMag-sTime-d"	"Time-GraviTime-yAccMag-mean"	"Time-GraviTime-yAccMag-sTime-d"	"Time-BodyAccJerkMag-mean"	"Time-BodyAccJerkMag-sTime-d"	"Time-BodyGyroMag-mean"	"Time-BodyGyroMag-sTime-d"	"Time-BodyGyroJerkMag-mean"	"Time-BodyGyroJerkMag-sTime-d"	"Freq-BodyAcc-mean-X"	"Freq-BodyAcc-mean-Y"	"Freq-BodyAcc-mean-Z"	"Freq-BodyAcc-sTime-d-X"	"Freq-BodyAcc-sTime-d-Y"	"Freq-BodyAcc-sTime-d-Z"	"Freq-BodyAccJerk-mean-X"	"Freq-BodyAccJerk-mean-Y"	"Freq-BodyAccJerk-mean-Z"	"Freq-BodyAccJerk-sTime-d-X"	"Freq-BodyAccJerk-sTime-d-Y"	"Freq-BodyAccJerk-sTime-d-Z"	"Freq-BodyGyro-mean-X"	"Freq-BodyGyro-mean-Y"	"Freq-BodyGyro-mean-Z"	"Freq-BodyGyro-sTime-d-X"	"Freq-BodyGyro-sTime-d-Y"	"Freq-BodyGyro-sTime-d-Z"	"Freq-BodyAccMag-mean"	"Freq-BodyAccMag-sTime-d"	"Freq-BodyBodyAccJerkMag-mean"	"Freq-BodyBodyAccJerkMag-sTime-d"	"Freq-BodyBodyGyroMag-mean"	"Freq-BodyBodyGyroMag-sTime-d"	"Freq-BodyBodyGyroJerkMag-mean"	"Freq-BodyBodyGyroJerkMag-sTime-d"
