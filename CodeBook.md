Getting-Cleaning-Data-Course-Project
====================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Manipulation of Original Data Set
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

Each record contains
====================
- Type of data (test or train).
- Activity label.
- An identifier of the subject who carried out the experiment.
- 66 factors of mean and standard deviations of time and frequency domain variables, averaged across subjects and activities.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features were then averaged by subject and activity.

Feature Names
=============

1	tBodyAcc-mean()-X
2	tBodyAcc-mean()-Y
3	tBodyAcc-mean()-Z
4	tBodyAcc-std()-X
5	tBodyAcc-std()-Y
6	tBodyAcc-std()-Z
7	tGravityAcc-mean()-X
8	tGravityAcc-mean()-Y
9	tGravityAcc-mean()-Z
10	tGravityAcc-std()-X
11	tGravityAcc-std()-Y
12	tGravityAcc-std()-Z
13	tBodyAccJerk-mean()-X
14	tBodyAccJerk-mean()-Y
15	tBodyAccJerk-mean()-Z
16	tBodyAccJerk-std()-X
17	tBodyAccJerk-std()-Y
18	tBodyAccJerk-std()-Z
19	tBodyGyro-mean()-X
20	tBodyGyro-mean()-Y
21	tBodyGyro-mean()-Z
22	tBodyGyro-std()-X
23	tBodyGyro-std()-Y
24	tBodyGyro-std()-Z
25	tBodyGyroJerk-mean()-X
26	tBodyGyroJerk-mean()-Y
27	tBodyGyroJerk-mean()-Z
28	tBodyGyroJerk-std()-X
29	tBodyGyroJerk-std()-Y
30	tBodyGyroJerk-std()-Z
31	tBodyAccMag-mean()
32	tBodyAccMag-std()
33	tGravityAccMag-mean()
34	tGravityAccMag-std()
35	tBodyAccJerkMag-mean()
36	tBodyAccJerkMag-std()
37	tBodyGyroMag-mean()
38	tBodyGyroMag-std()
39	tBodyGyroJerkMag-mean()
40	tBodyGyroJerkMag-std()
41	fBodyAcc-mean()-X
42	fBodyAcc-mean()-Y
43	fBodyAcc-mean()-Z
44	fBodyAcc-std()-X
45	fBodyAcc-std()-Y
46	fBodyAcc-std()-Z
47	fBodyAccJerk-mean()-X
48	fBodyAccJerk-mean()-Y
49	fBodyAccJerk-mean()-Z
50	fBodyAccJerk-std()-X
51	fBodyAccJerk-std()-Y
52	fBodyAccJerk-std()-Z
53	fBodyGyro-mean()-X
54	fBodyGyro-mean()-Y
55	fBodyGyro-mean()-Z
56	fBodyGyro-std()-X
57	fBodyGyro-std()-Y
58	fBodyGyro-std()-Z
59	fBodyAccMag-mean()
60	fBodyAccMag-std()
61	fBodyBodyAccJerkMag-mean()
62	fBodyBodyAccJerkMag-std()
63	fBodyBodyGyroMag-mean()
64	fBodyBodyGyroMag-std()
65	fBodyBodyGyroJerkMag-mean()
66	fBodyBodyGyroJerkMag-std()

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

References:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
