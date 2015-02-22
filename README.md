The R script called run_analysis.R does the following: 
1. Merges the training and the test sets to create one data set.
   For the training data, 
   The subject ids were read from the file subject_train.txt.
   The activity ids was read from the file train/X_train.txt.
   The 561 different measurement fields were read from the file train/y_train.txt
   These were combined using a simple cbind to create a training data frame which
   has the columns Subject id, Activity id, 561 measurement fields.

   Similarly a test data frame was constructed.

   The test data frame and the training data frame was combined simply by rbinding the
   test data frame and the training data frame. The full data set is stored in a data
   frame 'full_data'

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   I observed that the column name for mean and std deviations for each measurement are
   of the form xxx-mean() or xxx-std().
   So the solution is to extract only the columns from the data set which have names 
   which match the pattern "-mean(" or "-std(". 

3. Uses descriptive activity names to name the activities in the data set
   The activity labels are in file activity_labels.txt. These are quite descriptive in
   themselves, such as "STANDING" etc., Hence, the solution is to use the activity labels
   from this files and replace the activity ids in the combined data frame with these
   activity labels. This was done by using a lapply command to replace the activity ids
   with the activity labels.

4. Appropriately labels the data set with descriptive variable names. 
   The feature labels are present in file features.txt. These are quite descriptive in
   themselves. Also, it makes sense to maintain these names as they are meaningful to
   the data set creators. Hence, the solution is to use the variable names from the
   features.txt file for the 561 different measurements. In addition, the subject id
   column is titled "Subject" and the Activity column is titled "Activity".
   All this is accomplished simply by setting the colnames() of the full data set
   with "Subject", "Activity" and the 561 names (in order) from the file "features.txt". 
 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   For this, I use the 'aggregate' R function, and calculate the aggregate value by
   Subject and Activity columns on the full data set.
