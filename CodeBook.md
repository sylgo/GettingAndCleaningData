# Data Source

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information about the data source files structure and variables is available in the README.txt contained in the data source zip file.

The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels

# run_analysis.R script

The script consists of the following steps:
- read activity labels and features
- read test files 
- read train files
- bind test and train data
- select only mean and standard deviation data
- add labels
- create a tidy dataset by binding the subject, test, and train data write it to tidy1.txt
- create a second tidy dataset grouped by subject and activity and write it to tidy2.txt

#Output

tidy1.txt - 10299 obs. of 68 variables

tidy2.txt - 180 obs. of 68 variables

Variables:

subject	
activity	
tbodyacc-mean-x	
tbodyacc-mean-y	
tbodyacc-mean-z	
tbodyacc-std-x	
tbodyacc-std-y	
tbodyacc-std-z	
tgravityacc-mean-x	
tgravityacc-mean-y	
tgravityacc-mean-z	
tgravityacc-std-x	
tgravityacc-std-y	
tgravityacc-std-z	
tbodyaccjerk-mean-x	
tbodyaccjerk-mean-y	
tbodyaccjerk-mean-z	
tbodyaccjerk-std-x	
tbodyaccjerk-std-y	
tbodyaccjerk-std-z	
tbodygyro-mean-x	
tbodygyro-mean-y	
tbodygyro-mean-z	
tbodygyro-std-x	
tbodygyro-std-y	
tbodygyro-std-z	
tbodygyrojerk-mean-x	
tbodygyrojerk-mean-y	
tbodygyrojerk-mean-z	
tbodygyrojerk-std-x	
tbodygyrojerk-std-y	
tbodygyrojerk-std-z	
tbodyaccmag-mean	
tbodyaccmag-std	
tgravityaccmag-mean	
tgravityaccmag-std	
tbodyaccjerkmag-mean	
tbodyaccjerkmag-std	
tbodygyromag-mean	
tbodygyromag-std	
tbodygyrojerkmag-mean	
tbodygyrojerkmag-std	
fbodyacc-mean-x	
fbodyacc-mean-y	
fbodyacc-mean-z	
fbodyacc-std-x	
fbodyacc-std-y	
fbodyacc-std-z	
fbodyaccjerk-mean-x	
fbodyaccjerk-mean-y	
fbodyaccjerk-mean-z	
fbodyaccjerk-std-x	
fbodyaccjerk-std-y	
fbodyaccjerk-std-z	
fbodygyro-mean-x	
fbodygyro-mean-y	
fbodygyro-mean-z	
fbodygyro-std-x	
fbodygyro-std-y	
fbodygyro-std-z	
fbodyaccmag-mean	
fbodyaccmag-std	
fbodybodyaccjerkmag-mean	
fbodybodyaccjerkmag-std	
fbodybodygyromag-mean	
fbodybodygyromag-std	
fbodybodygyrojerkmag-mean	
fbodybodygyrojerkmag-std


