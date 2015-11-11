# Libraries
library(data.table)
library(plyr)

# Load Data
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Merge Data
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)
remove(X_test, X_train, y_test, y_train, subject_test, subject_train)

# Extract
## mean(): Mean value
## std(): Standard deviation
features_selected <- grep("*mean()|std()*", features$V2)
X_selected <- X[,features_selected]
remove(X)

# Descriptive Activity Names
y <- join(y, activity_labels, by = 'V1')

# Discriptive variable names
colnames(subject) <- c("subject_label")
colnames(X_selected) <- features[features_selected, 2]
colnames(y) <- c("activity_label", "activity_name")
dataset_1 <- cbind(X_selected, y$activity_name, subject)
remove(activity_labels, features, features_selected, X_selected, y, subject)

# Second Independent Tidy Data