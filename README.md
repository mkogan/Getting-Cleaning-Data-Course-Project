Getting-Cleaning-Data-Course-Project
====================================

Getting &amp; Cleaning Data Course Project

The run_analysis.R script in this repo assumes that you have already downloaded and unzipped the Human Activity Recognition Using Smartphones Data Set, and have set it as the working directory.

Manipulation of Original Data Set by the run_analysis.R script
=================================

1.	Relevant files are loaded into dataframes using read.table():
		activity_labels.txt, features.txt, train/subject_train.txt, train/y_train.txt, test/subject_test.txt, test/y_test.txt, X_train.txt, X_test.txt
		
2.	The X_train.txt and X_test.txt data frames, named train and test respectively, are given column names that correspond with the feature name from the features.txt data frame.

3.	The train and test data frames from step 2 are subset, leaving only the columns with features of mean and standard deviation data.

4.	The data frames containing the activity labels are merged with data frames containing the activity id (y_train.txt, y_test.txt)

5.	The data type (train or test), activity labels and subject info are added to both the training and test data sets.

6.	The train and test data frames are merged.

7.	A new tidy data frame is created, containing the mean of the features from the data set in step 6 grouped by activity type and subject number.

8.	The data frame from step 7 is sorted and written to a file.

Please refer to the CodeBook.md for information regarding the behaviour of the R script as well as information on the output dataset.