# Initialization and reading data.
# Read the training data and labels and store as a combined data frame
# containing columns: subject, activity, 561 measurement fields
subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
train <- cbind(subject_train, y_train, X_train)

# Read the test data and labels and store as a combined data frame
# containing columns: subject, activity, 561 measurement fields
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
test <- cbind(subject_test, y_test, X_test)

# 1.Merge the training set and test set. Store this result in full_df
full_df <- rbind(train, test) 

# 2. Comes later (after #4)

# 3. Comes later (after #4)

# 4. Appropriately label the data set with descriptive variable names
# Solution: Use 'Subject' and 'Activity' along with information
# from features.txt to provide descriptive column names.
feature_labels <- read.table("features.txt")
colnames(full_df) <- c("Subject", "Activity", as.vector(feature_labels[[2]]))
 
# 3. Use descriptive activity names to label the activities in the data set
# Solution: Replace the numeric activity levels with the corresponding labels
# from the file activity_labels.txt
activity_labels <- read.table("activity_labels.txt")
full_df$Activity <- 
  unlist(lapply(full_df$Activity, 
                function(x, label) as.character(label[x, 2]), 
                activity_labels))

# 2. Extract only the measurements on the mean and standard deviations
# for each measurement.
# Solution: We observe that the column name for mean and std deviations 
# for each measurement are of the form xxx-mean() or xxx-std().
# So the solution is to extract only the columns from the data set 
# which have names which match the pattern "-mean(" or "-std(".
# Note that the "(" needs to be escaped with a "\\" in R regex.
full_meanstd_df <- full_df[grepl('-mean\\(|-std\\(', colnames(full_df))]

# 5. From the data set in step 4, create a second, independent tidy data set
# with the average of each variable for each activity and each subject
# Solution: use the aggregate function.
full_avg_df <- aggregate(full_df[,!names(full_df) %in% c("Subject", "Activity")], 
                          by = full_df[c("Subject", "Activity")], 
                          function(x) mean(x, na.rm = T))
# If needed to rename the column names to reflect that these are averaged,
# use this: colnames(full_avg_df) <- paste(colnames(full_avg_df), "Avg") 

# Write out the data as a table
write.table(full_avg_df, "full_avg.txt", row.names = FALSE)
