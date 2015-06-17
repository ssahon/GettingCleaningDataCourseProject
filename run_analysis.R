run_analysis <- function()
{
    library(dplyr)
    library(reshape2)
    
    # download original dataset
    downloadURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    if (!file.exists("UCI HAR Dataset")) {
        download.file(downloadURL, destfile="UCI_HAR.zip")
        unzip("UCI_HAR.zip")
    }
    
    #loads train data
    xTrain<- read.table('./UCI HAR Dataset/train/X_train.txt',header = FALSE)
    yTrain<-read.table('./UCI HAR Dataset/train/y_train.txt',header = FALSE)
    subjectTrain<-read.table('./UCI HAR Dataset/train/subject_train.txt',header = FALSE)
    #loads test data
    xTest<- read.table('./UCI HAR Dataset/test/X_test.txt',header = FALSE)
    yTest<-read.table('./UCI HAR Dataset/test/y_test.txt',header = FALSE)
    subjectTest<-read.table('./UCI HAR Dataset/test/subject_test.txt',header = FALSE)
    #loads activities
    activities<-read.table('./UCI HAR Dataset/activity_labels.txt',header = FALSE)
    colnames(activities)<-c('Activity.Id','Activity.Name')
    #combines test and train dataset
    x<-rbind(xTrain,xTest)
    y<-rbind(yTrain,yTest)
    subject<-rbind(subjectTrain,subjectTest)
    #loads features
    features<-read.table('./UCI HAR Dataset/features.txt',header = FALSE,col.names = c('Id','Name'))
    #changes column names in x with features names 
    #which have descriptive names according course project requirement!!!!!!!!!!!!!!!!!!!!!!!!!!
    colnames(x)<-features$Name
    #removes variables except mean and std
    xFiltered<-x[,grep("mean|std", colnames(x))]
    #merges activities,subjects and data
    d<- cbind(y,subject, xFiltered)
    #changes column names
    colnames(d)[1]<-'Activity.Id'
    colnames(d)[2]<-'Subject.Id'
    #assigns activity name to each row
    d<-merge(activities,d)
    #removes Activity.Id column
    d$Activity.Id<-NULL
    #creates separate tidy dataset which is average aggregation of each variable by subject and activity and writes it to file
    melted<-melt(d,c('Activity.Name','Subject.Id'))
    tidy<-dcast(melted, Activity.Name + Subject.Id ~ variable,mean)
    write.table(tidy, "./tidy.txt", row.name=FALSE)
}