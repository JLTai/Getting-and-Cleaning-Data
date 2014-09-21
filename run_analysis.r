run_analysis<-function(){

#using plyr for join feature
#plyr does not sort data when merge unlike merge()
library(plyr)

decoderID<-read.table("activity_labels.txt")
setLabel<-read.table("features.txt")

#loads both test and train label information
#cleans it up and renames columns
#i.e. Part 3
activeID<-rbind(read.table("test/y_test.txt"),read.table("train/y_train.txt"))
subjID<-rbind(read.table("test/subject_test.txt"),read.table("train/subject_train.txt"))
setINFO<-join(activeID,decoderID)
setINFO<-cbind(subjID,setINFO)
colnames(setINFO)<-c("Subject_ID","Activity_ID","Activity_Name")

#Loads both test and train data to a data frame
#i.e. Part 1
combineSet<-rbind(read.table("test/X_test.txt"),read.table("train/X_train.txt"))

#Extracts only #the mean and standard deviation
#i.e. Part 2
finalLabels<-grep(pattern = "mean\\()|std\\()",setLabel[,2])
finalLabels<-setLabel[finalLabels,]

#Cleans up data labels
#i.e. Part4
finalLabels[,2]<-gsub("\\()","",finalLabels[,2])
finalLabels[,2]<-gsub("t","Time-",finalLabels[,2])
finalLabels[,2]<-gsub("f","Freq-",finalLabels[,2])

combineSet<-combineSet[,finalLabels$V1]
colnames(combineSet)<-finalLabels$V2

#activity information is added at the end so that
#labels are attached to the correct column
combineSet<-cbind(setINFO,combineSet)

#plyr command which find the mean of each variable:
#for each subject and each activity
#i.e. Part 5
analysedData<-ddply(combineSet,.(Subject_ID,Activity_Name),numcolwise(mean))
	
#writes analysed Data table to file (part 5)
write.table(analysedData, "combinedCleanData.txt", sep="\t")

}