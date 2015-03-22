run <- function(){

  
##generic vectors:

##  1. assign "features" and name its column
columnas <- read.table("features.txt")
nom_columnas <- columnas$V2
## 2. assign "activity lables" and name its columns
actividades <- read.table("activity_labels.txt")
colnames(actividades) <- c("activity","activity_name")

## necessary libraries
library(gdata)
library(dplyr)
library(reshape2)


## TEST data frame:

##  1. assign "y" and name its column
y_test <- read.table("y_test.txt")
colnames(y_test) <- c("activity")
## 2. assign "subjects" and name its column
subject_test <- read.table("subject_test.txt")
colnames(subject_test) <- c("subject")
## 3. assign "X_test" and name its columns
test <- read.table("X_test.txt")
colnames(test) <- nom_columnas
## 4. identify columns that include "Mean", "mean" or "std"
columnas_sel <- matchcols(test,with=c("Mean","mean","std"),method="or")
columnas_sel2 <- c(columnas_sel$Mean, columnas_sel$mean, columnas_sel$std)
## 5. subset the test data frame with mean and standard direction columns
test2 <- subset(test, select = columnas_sel2)
## 6. put subject, y and x in one data frame
test3 <- cbind(subject_test,y_test,test2)
## 7. include the names for the activities into the whole test data frame
test4 <- merge(actividades,test3)
## 8. include a new column indicating that the data belongs to "test" info.
test5 <- mutate(test4,file="test")


## TRAIN data frame:

##  1. assign "y" and name its column
y_train <- read.table("y_train.txt")
colnames(y_train) <- c("activity")
## 2. assign "subjects" and name its column
subject_train <- read.table("subject_train.txt")
colnames(subject_train) <- c("subject")
## 3. assign "X_train" and name its columns
train <- read.table("X_train.txt")
colnames(train) <- nom_columnas
## 4. subset the test data frame with mean and standard direction columns
train2 <- subset(train, select = columnas_sel2)
## 5. put subject, y and x in one data frame
train3 <- cbind(subject_train,y_train,train2)
## 6. agregar los nombres de las actividades
train4 <- merge(actividades,train3)
## 7. include the names for the activities into the whole train data frame
train5 <- mutate(train4,file="train")


## GLOBAL data set:
  
## 1. put the test and train data frames into one whole data frame
data <- rbind(test5,train5)
## 2. use melt format for next cast function
data_melt <- melt(data,id=c("subject","activity_name"),measure.vars = columnas_sel2)
## 3. group by subject and activity_name, and calculate the mean of each variable
data_cast <- dcast(data_melt,subject + activity_name ~ variable,mean)
## 4. save tidy data into a txt file
write.table(data_cast,"tidy_data.txt",row.name=FALSE)
print("The file tidy_data.txt has been created. You may access it with function read.table using header=TRUE")


}