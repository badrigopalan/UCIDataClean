## Experiment design and background

This sample is based on data collected from the study titled 
["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Human Activity Recognition database built from the recordings of 30 subjects performing activities 
of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
The experiments have been carried out with a group of 30 volunteers. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, LAYING) wearing a smartphone. Using the embedded accelerometer 
and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were measured. 
The raw data has been partitioned into a training data set and a test data set.

## Raw data

1. A record for each entry containing a 561 feature vector with and frequency domain variables
2. The activity label for each record in a separate file 'activity_labels.txt'
3. The list of all features in 'features.txt'
4. Additional information on the features in 'features_info.txt'
5. Training data set and training labels in separate files:
  'train/X_train.txt', 'train/y_train.txt'
6. Test data set and test labels in separate files:
  'test/X_test.txt', 'test/y_test.txt'

## Processed data

1. A merged data set was created from the training and the test data set. This formed the basis
  for the tidy data sets 1, 2 and 3. Tidy data set 1 provides the full details. Tidy data set 2
  provides averages over each subject and activity. Tidy data set3 provides a the mean and
  std deviations of each measurement.
2. Tidy data set 1: All the 561 features of the raw data set were maintained. This data set
  may be used for detailed analysis on all the factors. The rationale for not removing the
  features is it is not clear which may be needed for detailed analysis. It is possible
  however to remove the derived features such as avg, std-deviation etc., but I have
  decided not to do so for this exercise.
3. Tidy data set 2: The averages of each activity and subject are calculated. This data set
  is intended to provide a high level overview of the activities by each subject. 
  All 561 features have again been retained.
4. Tidy data set 3: Only the mean and standard deviation items in the data set have been retained.
  This includes the mean and std deviation for the following measurements:
  * tBodyAcc-X, Y, Z in m/s^2^
  * tGravityAcc-X, Y, Z in m/s^2^
  * tBodyAccJerk-X, Y, Z in m/s^3^
  * tBodyGyro-X, Y, Z in rad/s^2^
  * tBodyGyroJerk-X, Y, Z in rad/s^3^
  * tBodyAccMag in m/s^2^
  * tGravityAccMag in m/s^2^
  * tBodyAccJerkMag in m/s^3^
  * tBodyGyroMag in rad/s^2^
  * tBodyGyroJerkMag in rad/s^3^
  * fBodyAcc-X, Y, Z in m/s^2^
  * fBodyAccJerk-X, Y, Z in m/s^3^
  * fBodyGyro-X, Y, Z in rad/s^2^
  * fBodyAccMag in m/s^2^
  * fBodyBodyAccJerkMag in m/s^3^
  * fBodyBodyGyroMag in rad/s^2^
  * fBodyBodyGyroJerkMag in rad/s^3^
5. The activity ids were processed and replaced by descriptive activity names in both data sets.
6. The measurements were labeled with descriptive label names in both data sets.
