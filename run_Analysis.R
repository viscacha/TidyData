SubjectTest <-read.table("UCI HAR Dataset/test/subject_test.txt")
XTest<- read.table("UCI HAR Dataset/test/X_test.txt")
YTest<- read.table("UCI HAR Dataset/test/Y_test.txt")


SubjectTrain <-read.table("UCI HAR Dataset/train/subject_train.txt")
XTrain<- read.table("UCI HAR Dataset/train/X_train.txt")
YTrain<- read.table("UCI HAR Dataset/train/Y_train.txt")

features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")

##Merge the training and the test sets to create one data set.
X<-rbind(XTest, XTrain)
Y<-rbind(YTest, YTrain)
Subject<-rbind(SubjectTest, SubjectTrain)

##Extract only the measurements on the mean and standard deviation for each measurement.
index<-grep("mean\\(\\)|std\\(\\)", features[,2])
length(index)
X<-X[,index]
dim(X)

##Use descriptive activity names to name the activities in the data set
Y[,1]<-activity[Y[,1],2] 
head(Y)

##Appropriately label the data set with descriptive variable names.
names<-features[index,2] 
names(X)<-names 
names(Subject)<-"SubjectID"
names(Y)<-"Activity"
    
CleanedData<-cbind(Subject, Y, X)
head(CleanedData[,c(1:4)]) 

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
CleanedData<-data.table(CleanedData)
TidyData <- CleanedData[, lapply(.SD, mean), by = 'SubjectID,Activity'] 
dim(TidyData)
write.table(TidyData, file = "Tidy.txt", row.names = FALSE)
head(TidyData[order(SubjectID)][,c(1:4), with = FALSE],12) 



