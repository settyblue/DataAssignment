# Human Activity Recognition Using Smartphones Dataset (Modified)
#####Version : 1.0  
#####Date : 21-12-2014
#####Author : Rakshith Kunchum  
#####Contact : [settyblue].[at].[gmail].[com]

This project contains the modified data for the final evaluation on course of Getting and Cleaning Data on Coursera.
Following is the list of files included in this project.
  - README.md 
  - CodeBook.md  : Information about the dataset.
  - run_analysis.R : R Script to get and clean the dataset.
  - Summarised_Dataset.txt : Final Dataset.
  - Column_Names.txt  : Column Labels of the above dataset.

The dataset was written into a file with the following command:
```sh
> write.fwf(rbind(c(colnames(summarised_dataset)),summarised_dataset),"Summarised_Dataset.txt"
           ,width=25,quote=FALSE,colnames=FALSE)
```
So in order to read the data into your R environment, you can run the following command:
```sh
> read.table("Summarised_Dataset.txt",header=TRUE)
```
#####Note 
The dataset files are viewed best on Notepad++ for Windows users.
