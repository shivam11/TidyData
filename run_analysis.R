train_data<-read.table(".\\UCIHARDataset\\train\\X_train.txt")
train_label<-read.table(".\\UCIHARDataset\\train\\y_train.txt")
train_subject<-read.table(".\\UCIHARDataset\\train\\subject_train.txt")
train_features<-read.table(".\\UCIHARDataset\\features.txt")

test_data<-read.table(".\\UCIHARDataset\\test\\X_test.txt")
test_label<-read.table(".\\UCIHARDataset\\test\\y_test.txt")
test_subject<-read.table(".\\UCIHARDataset\\test\\subject_test.txt")

activity_label<-read.table(".\\UCIHARDataset\\ACTIVITY_LABELS.txt")

selectedFeatures<-grepl("^t.*mean()|^t.*std()",train_features$V2,ignore.case=TRUE)
selectedFeaturesList<-train_features[selectedFeatures,]

# write.csv(selectedFeaturesList,'selectedFeatures.csv')

colTitles<-read.csv('selectedFeatures.csv')

train<-cbind(train_subject,train_label,train_data[,colTitles[,1]])
test<-cbind(test_subject,test_label,test_data[,colTitles[,1]])
data<-rbind(train,test)

titles<-c('subject','activity.label',as.character(colTitles[,3]))
colnames(data)<-titles
data[,2]<-factor(data[,2],level=activity_label$V1,label=activity_label$V2)

tidy_data<-aggregate(data[,3:ncol(data)],by=list(group.subject=data$subject,group.activity=data$activity.label),FUN=mean,na.rm=TRUE)
write.csv(tidy_data,"tidy_data.txt")

