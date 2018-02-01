# 1. Download file

final<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile= "./sem3/final.zip", method="curl")

# 2. Install readr, dplyr packages
library(readr)
library(dplyr)

# 3. Read data and create the vectors
xtrain<-read.table("./sem3/UCI HAR Dataset/train/X_train.txt")
subtrain<-read.table("./sem3/UCI HAR Dataset/train/subject_train.txt")
ytrain<-read.table("./sem3/UCI HAR Dataset/train/sY_train.txt")
xtest<-read.table("./sem3/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./sem3/UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("./sem3/UCI HAR Dataset/test/subject_test.txt")

# 4. Exploring the labels and features files
activity_labels<-read.table("./sem3/UCI HAR Dataset/activity_labels.txt")
features<-read.table("./sem3/UCI HAR Dataset/features.txt")
# 5.  View your data - repeat the command for all vectors
View(xtrain) 

# 6. Inspect ellements of the data. Using str() function you can check the size of your six vectors
str(xtrain)

# 7. Merging the files (training and test sets to create one dataset)

allxfiles<-rbind(xtrain,xtest)
allyfiles<-rbind(ytrain,ytest)
allsubfiles<-rbind(subtrain,subtest)

# 8. Extract only the measurements on the mean and std for each measurement

selectedvar<-features[grep("mean\\(\\)|std(\\)", features[,2])]
xselected<-allxfiles[,selectedvar[,1]]

# 9. Renaming the Activity codes to the corresponded labels

colnames(allyfiles)<-"activity"
allyfiles$activitylabel<-factor(allyfiles$activity, labels= as.character(activity_labels[,2]))
activitylabel<-allyfiles[,-1]
activitylabel

# 10. Appropriately labels the data set with descriptive variable names

colnames(allxfiles)<-features[selectedvar[,1],2]

# 11. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

colnames(allxfiles)<-features[selectedvar[,1],2]
colnames(allsubfiles) <- "subject"
complete<-cbind(allxfiles,activitylabel, allsubfiles)
avg_complete<- group_by(complete, activitylabel, subject) 

# 12. Renaming variables to make them clearer

names(avg_complete)<-gsub('\\(|\\)',"",names(avg_complete),perl=TRUE)
names(avg_complete)<-make.names(names(avg_complete))
names(avg_complete)<-gsub('Acc', "acceleration",names(avg_complete))
names(avg_complete)<-gsub('Gyrojerk', "angularacceleration",names(avg_complete))
names(avg_complete)<-gsub('Mag', "magnitude",names(avg_complete))
names(avg_complete)<-gsub('^t', "timedomain",names(avg_complete))
names(avg_complete)<-gsub('^f', "frequencydomain",names(avg_complete))
names(avg_complete)<-gsub('\\.mean', "mean",names(avg_complete))
names(avg_complete)<-gsub('\\.std', "standarddeviation",names(avg_complete))
names(avg_complete)<-gsub('\\.Freq', "frequency",names(avg_complete))
names(avg_complete)<-gsub('\\.Freq$', "frequency",names(avg_complete))
names(avg_complete)<-gsub('Body', "body",names(avg_complete))

# 13. Finalizing organization (removing NA cols, and arranging by subjet and activity label)
avg_complete_final<-avg_complete[,-c(67:561)]
avg_complete_final_arranged<-arrange(avg_complete_final,subject,activitylabel)

# I then, rearranged the last teo columns to be the first ones
avg_complete_final_arranged1<-subset(avg_complete_final_arranged,select=c(subject, activitylabel,1:66))

# 14. Creating a second dataset from the labeled dataset

write.table(avg_complete_final_arranged1, file = "./sem3/UCI HAR Dataset/newtidydata.txt", row.names = FALSE, col.names = TRUE)
