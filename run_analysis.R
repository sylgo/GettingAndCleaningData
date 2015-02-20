library(dplyr)

# read labels
activity_labels <- read.table(file='C:/Data/UCI HAR Dataset/activity_labels.txt')
features <- read.table(file='C:/Data/UCI HAR Dataset/features.txt')

# read test files
subject_test <- read.table(file='C:/Data/UCI HAR Dataset/test/subject_test.txt')
x_test <- read.table(file='C:/Data/UCI HAR Dataset/test/X_test.txt')
y_test <- read.table(file='C:/Data/UCI HAR Dataset/test/y_test.txt')

# read train files
subject_train <- read.table(file='C:/Data/UCI HAR Dataset/train/subject_train.txt')
x_train <- read.table(file='C:/Data/UCI HAR Dataset/train/X_train.txt')
y_train <- read.table(file='C:/Data/UCI HAR Dataset/train/y_train.txt')

# bind test and train data.
subject <- rbind(subject_test, subject_train)
x <- rbind(x_train,x_test)
y <- rbind(y_train,y_test)

# select only mean & std features
mean_std_features <- grep("-mean\\(\\)|-std\\(\\)", features$V2)
x <- subset(x, select = mean_std_features) 

# add labels
names(x) <- features[mean_std_features, 2]
names(x) <- tolower( gsub("\\(|\\)", "", names(x)) )
y[,1] = activity_labels[y[,1], 2]
names(y) <- "activity"
names(subject) <- "subject"

# creating and writing a tidy dataset
tidy1 <- cbind(subject, y, x)
write.table(tidy1, "tidy1.txt", row.name=FALSE)

# creating and writing the second tidy dataset grouped by subject and activity
tidy2 <- tidy1 %>% group_by(subject, activity) %>% summarise_each(funs(mean))
write.table(tidy2, "tidy2.txt", row.name=FALSE)
