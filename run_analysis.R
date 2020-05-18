x<-rbind(x_train,x_test)
y<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)
merged_data<-cbind(subject,x,y)

#select columns subject,code and all columns containing mean and std
tidydata<-merged_data %>% select(subject,code,contains("mean"),contains("std"))

# 2 selects activity (ie 2nd column) if given: activities[5,2]
#[1] STANDING is produced
#if given : activities[5,]
#code activity
#5    5 STANDING  and entire row is produced
tidydata$code<-activities[tidydata$code,2]

##giving proper labels
names(tidydata)[2] = "activity"
names(tidydata)<-gsub("Acc", "Accelerometer", names(tidydata))
names(tidydata)<-gsub("Gyro", "Gyroscope", names(tidydata))
names(tidydata)<-gsub("BodyBody", "Body", names(tidydata))
names(tidydata)<-gsub("Mag", "Magnitude", names(tidydata))
names(tidydata)<-gsub("^t", "Time", names(tidydata))
names(tidydata)<-gsub("^f", "Frequency", names(tidydata))
names(tidydata)<-gsub("tBody", "TimeBody", names(tidydata))
names(tidydata)<-gsub("-mean()", "Mean", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("-std()", "STD", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("-freq()", "Frequency", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("angle", "Angle", names(tidydata))
names(tidydata)<-gsub("gravity", "Gravity", names(tidydata))

##make factors wherever possible and summarise everything
finaldata <- tidydata %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

##write data to a text file finaldata
write.table(finaldata, "finaldata.txt",row.name=FALSE)
