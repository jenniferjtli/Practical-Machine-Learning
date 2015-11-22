library(caret)
library(randomForest)
set.seed(12345)
data<-read.csv("D:\\Tsinghua\\statistics\\machine learning\\project\\pml-training.csv")
index<-c(7:11,37:49,60:68,84:86,102,113:124,140,151:160)
data<-data[,index]
partition<-createDataPartition(y=data$classe,p=0.7,list=FALSE)
training<-data[partition,]
testing<-data[-partition,]
fit<-randomForest(classe~.,data=training,ntrees=10)
x<-predict(fit,testing)
table(x,testing$classe)
data2<-read.csv("D:\\Tsinghua\\statistics\\machine learning\\project\\pml-testing.csv")
data2<-data2[,index]
predict(fit,data2)
summary(fit)



