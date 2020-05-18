## 1.Preparation Stage: getandclean.R

  * The getandclean.R script downloads and prepares the data for analysis.
  * Gets the zipfile, unzips the file and extractes it under the folder called UCI HAR Dataset.
  * Assigns variables to data : features,activites,subject_test,x_test,y_test,subject_train,x_train,y_train.

## 2.Analysis Stage: run_analysis.R

  * Merge train and test variables into one, we get x,y and subject.
  * cbind() these three into a single data frame mergeddata.
  * tidydata is created by selecting only columns: subject, code and the measurements on the mean and standard deviation (std) for each measurement.
  * Entire numbers in code column of the TidyData replaced with corresponding activity taken from second column of the activities variable.
  * Label the data set with descriptive variable names. eg: "gyroscope" instead of "gyro".
  * Take the average of each variable for each activity and each subject, after grouped by subject and activity and transfer them into the finaldata.txt file.
