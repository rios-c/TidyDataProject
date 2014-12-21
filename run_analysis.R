# Read test data
testx=read.table("./UCI HAR Dataset/test/X_test.txt",sep="", header=F);
testy=read.table("./UCI HAR Dataset/test/y_test.txt",sep="", header=F);
subjecttest=read.table("./UCI HAR Dataset/test/subject_test.txt",sep="", header=F);
# Read training data
trainx=read.table("./UCI HAR Dataset/train/X_train.txt",sep="", header=F);
trainy=read.table("./UCI HAR Dataset/train/y_train.txt",sep="", header=F);
subjecttrain=read.table("./UCI HAR Dataset/train/subject_train.txt",sep="", header=F);

# Read feature and activity factors
features=read.table("./UCI HAR Dataset/features.txt",sep="", header=F);
activity=read.table("./UCI HAR Dataset/activity_labels.txt",sep="", header=F);

# Reformat the features labels
tidyFeatures = features;
tidyFeatures$V2 = as.character(features$V2);
tidyFeatures[1,2] = "BodyAccelerationMeanInX";
tidyFeatures[2,2] = "BodyAccelerationMeanInY";
tidyFeatures[3,2] = "BodyAccelerationMeanInZ";
tidyFeatures[4,2] = "BodyAccelerationStandardDeviationInX";
tidyFeatures[5,2] = "BodyAccelerationStandardDeviationInY";
tidyFeatures[6,2] = "BodyAccelerationStandardDeviationInZ";

# Add columns names to the test data
names(testx) = tidyFeatures$V2;
names(testy) = "ActivityCode";
testx$ActivityCode = testy$ActivityCode;
testx$Subject = subjecttest$V1;

# Lable Activity 
testx$Activity = activity[ activity[testx$ActivityCode, 1], 2];

# Add columns names to the train data
names(trainx) = tidyFeatures$V2;
names(trainy) = "ActivityCode";
trainx$ActivityCode = trainy$ActivityCode;
trainx$Subject = subjecttrain$V1;

trainx$Activity = activity[ activity[trainx$ActivityCode, 1], 2];

x = rbind( testx, trainx);
tidyData = x[ , c("Activity", "ActivityCode", "Subject", tidyFeatures[1:6,2]) ];
write.table(tidyData, file="./tidyData.txt", sep=" ", row.names=F);