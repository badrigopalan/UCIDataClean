Experiment design and background:
This sample is based on data collected from the study titled 
"Human Activity Recognition Using Smartphones Data Set" with the following reference
link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

(Excerpted from the reference URL provided above:)
Human Activity Recognition database built from the recordings of 30 subjects performing activities 
of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, LAYING) wearing a smartphone. Using the embedded accelerometer 
and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were measured. 
The dataset has been partitioned into a training data set and a test data set.

Raw data:
- A record for each entry containing a 561 feature vector with and frequency domain variables
- The activity label for each record in a separate file 'activity_labels.txt'
- The list of all features in 'features.txt'
- Additional information on the features in 'features_info.txt'
- Training data set and training labels in separate files:
  'train/X_train.txt', 'train/y_train.txt'
- Test data set and test labels in separate files:
  'test/X_test.txt', 'test/y_test.txt'

Processed data:
- Tidy data set 1: All the 561 features of the raw data set were maintained. This data set
  may be used for detailed analysis on all the factors. The rationale for not removing the
  features is it is not clear which may be needed for detailed analysis. It is possible
  however to remove the derived features such as avg, std-deviation etc., but I have
  decided not to do so for this exercise.
  Tidy data set 2: The averages of each activity and subject are calculated. This data set
  is intended to provide a high level overview of the activities by each subject. 
  All 561 features have again been retained.
- The activity ids were processed and replaced by descriptive activity names in both data sets.
- The measurements were labeled with descriptive label names in both data sets.
