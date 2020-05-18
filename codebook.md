## 1.Preparation Stage: getandclean.R

  * The getandclean.R script downloads and prepares the data for analysis.
  * Gets the zipfile, unzips the file and extractes it under the folder called UCI HAR Dataset.
  * Assigns variables to data : features,activites,subject_test,x_test,y_test,subject_train,x_train,y_train.
  
| variable name |  data in file        | 
| ------------- |:--------------------:|
| feature       |     features.txt     | 
| activities    |activity_labels.txt   |   
| subject_test  |test/subject_test.txt |
| x_test        |test/X_test.txt.      |
| y_test        |  test/y_test.txt     |
| subject_train |test/subject_train.txt|
| x_train       |    test/X_train.txt  |
| y_train       |  test/y_train.txt    |

## 2.Analysis Stage: run_analysis.R

  * Merge train and test variables into one, we get x,y and subject.
  * cbind() these three into a single data frame mergeddata.
  * tidydata is created by selecting only columns: subject, code and the measurements on the mean and standard deviation (std) for each measurement.
  * Entire numbers in code column of the tidydata replaced with corresponding activity taken from second column of the activities variable.
  * Label the data set with descriptive variable names. eg: "gyroscope" instead of "gyro". Code column in tidydata renamed into activities.The details are given in the below table.
  * Take the average of each variable for each activity and each subject, after grouped by subject and activity and transfer them into the finaldata.txt file.
  
  
|  old name     |      new name        | 
| ------------- |:--------------------:|
|   Acc         |     Accelerometer    | 
|   Gyro        |     Gyroscope.       |   
|  BodyBody     |     Body             |
|      Mag      |     Magnitude.       |
|      f        |     Frequency.       |
|      t        |     Time             |
  
