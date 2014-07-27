TidyData -Readme
========
To run the analysis, the run_analysis.R file should be executed. 

The folder containing the original data should be in the current directory. The file structure of the data directory is below:

UCIHARDataset
  
  test folder
  
    Inertial Signals folder
    
    subject_test
    
    X_test
    
    y_test
  
  train folder
  
    Inertial Signals folder
    
    subject_test
    
    X_test
    
    y_test
  
  activity_labels
  
  features
  
  features_info
  
  README
  
##Code explaination

  The training data are read.
  
    train_data<-read.table(".\\UCIHARDataset\\train\\X_train.txt")
    train_label<-read.table(".\\UCIHARDataset\\train\\y_train.txt")
    train_subject<-read.table(".\\UCIHARDataset\\train\\subject_train.txt")
    train_features<-read.table(".\\UCIHARDataset\\features.txt")

 The test data are read.
 
    test_data<-read.table(".\\UCIHARDataset\\test\\X_test.txt")
    test_label<-read.table(".\\UCIHARDataset\\test\\y_test.txt")
    test_subject<-read.table(".\\UCIHARDataset\\test\\subject_test.txt")
    
  The activity label are read
  
    activity_label<-read.table(".\\UCIHARDataset\\ACTIVITY_LABELS.txt")

  Grep is performed to find features where the name ends with either **mean()** or **std()**
    
    selectedFeatures<-grepl("^t.*mean()|^t.*std()",train_features$V2,ignore.case=TRUE)
    
  The selected features are stored.
    
    selectedFeaturesList<-train_features[selectedFeatures,]
    colTitles<-read.csv('selectedFeatures.csv')

  The subject, activity label and the selected data are merged together for training.
   
    train<-cbind(train_subject,train_label,train_data[,colTitles[,1]])
    
  The subject, activity label and the selected data are merged together for training.
    
    test<-cbind(test_subject,test_label,test_data[,colTitles[,1]])
  
  The training and testing data are merged together
    
    data<-rbind(train,test)

  The column names are added for the new columns.
    
    titles<-c('subject','activity.label',as.character(colTitles[,3]))
    colnames(data)<-titles
    
  The activity label is converted into a factor.
    
    data[,2]<-factor(data[,2],level=activity_label$V1,label=activity_label$V2)

  The mean is generated based in grouping of subjects and activities.
   
    tidy_data<-aggregate(data[,3:ncol(data)],by=list(group.subject=data$subject,group.activity=data$activity.label),FUN=mean,na.rm=TRUE)
    
  The data is written to file
    
    write.csv(tidy_data,"tidy_data.txt")
    