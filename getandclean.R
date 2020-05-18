library(dplyr)
if(!file.exists("data.zip"))
  file.create("data.zip")
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,"./data.zip",mehtod="curl")

## if UCI HAR Dataset file does not exist it means the file is not unzipped yet
if(!file.exists("UCI HAR Dataset"))
  unzip("data.zip")

##creating data frames with all available data
features<-read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities<-read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code","activity"))
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test<-read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test<-read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train<-read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train -read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")                                                                                                          y_train<-read.table("UCI HAR Dataset/test/Y_train.txt",col.names = c(activities$code))
                                                                                                                                
