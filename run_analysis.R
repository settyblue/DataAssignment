run_analysis <- function(){
  ##Loading the daata from text files to local dataframes.
  subject1 <- read.table("UCI HAR Dataset/train/subject_train.txt",sep = "",header=FALSE)
  subject2 <- read.table("UCI HAR Dataset/test/subject_test.txt",sep = "",header=FALSE)
  y1 <- read.table("UCI HAR Dataset/train/y_train.txt",sep = "",header=FALSE)
  y2 <- read.table("UCI HAR Dataset/test/y_test.txt",sep = "",header=FALSE)
  x1 <- read.table("UCI HAR Dataset/train/X_train.txt",sep = "",header=FALSE)
  x2 <- read.table("UCI HAR Dataset/test/X_test.txt",sep = "",header=FALSE)
  features <- read.table("UCI HAR Dataset/features.txt",sep = "",header=FALSE,row.names=1)
  
  ##Combining test and train datasets into single variable.
  x <- rbind(x1,x2)
  y <- rbind(y1,y2)
  subject <- rbind(subject1,subject2)
  
  ##Formating column labels.
  features <- gsub("-","_",features)
  features <- sub("()_","_",features,fixed=TRUE)
  features <- sub("()","",fixed=TRUE,features)
  
  ##Substitute y for their corresponding activity labels.
  ##function descriptive_activity is below.
  activity_labels <- descriptive_activity(y)
  
  ##Column bind all variables to create complete DataSet.
  complete_dataset <- tbl_df(cbind(subject,activity_labels,x))
  colnames(complete_dataset) <- c("Subject","Activity",features)
  
  ##Subsetting required features.
  features_index <- grep("mean|std",features)
  features_index_removed <- grep("meanFreq",features)
  features_index <- features_index[!(features_index %in% features_index_removed)]
  
  required_dataset <- complete_dataset[,features_index(1,2,features_index+2)]
  
  ##Grouping the required dataset by columns 'Subject' and 'Activity', in that order
  ##and summarising all the columns.
  summarised_dataset <- summarise_each(group_by(required_dataset,Subject,Activity),funs(mean))
  
  ##Format the dataset to scientific notation.
  summarised_dataset<- format(summarised_dataset,scientific=TRUE)
  
  ##Write the dataset to a file in fixed width format.
  write.fwf(rbind(c(colnames(summarised_dataset)),summarised_dataset),"Summarised_Dataset.txt",
            width=25,quote=FALSE,colnames=FALSE)
}

descriptive_activity <- function(x){
  y <- mutate(x,activity = "help")
  for(i in 1:nrow(x)){
    if(y[i]==1) y[i] <- "WALKING"
    else if(y[i]==2) y[i] <- "WALKING_UPSTAIRS"
    else if(y[i]==3) y[i] <- "WALKING_DOWNSTAIRS"
    else if(y[i]==4) y[i] <- "SITTING"
    else if(y[i]==5) y[i] <- "STANDING"
    else  y[i] <- "LAYING"
  }
  y
}