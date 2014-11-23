#read data files
activity_labels<-read.table('activity_labels.txt', sep=' ', col.names=c('id','label'))
features<-read.table('features.txt', sep=' ', col.names=c('id','label'))

sub_train<-read.table('train//subject_train.txt', col.names='id')
act_train<-read.table('train//y_train.txt', col.names='id')

sub_test<-read.table('test//subject_test.txt', col.names='id')
act_test<-read.table('test//y_test.txt', col.names='id')

train<-read.table('train//X_train.txt')
test<-read.table('test//X_test.txt')

#rename columns data
colnames(train)<-features$label
colnames(test)<-features$label

#leave only the mean and std columns
train<-train[,grep('mean\\(|std\\(',colnames(train))]
test<-test[,grep('mean\\(|std\\(',colnames(test))]

#adding variables to identify activity 
act_train_lab=merge(act_train,activity_labels, by='id')
act_test_lab=merge(act_test,activity_labels, by='id')

#add columns to identify type of data (train or test), activity type, and subject number
train<-cbind(data='train',activity=act_train_lab$label,subject=sub_train$id, train)
test<-cbind(data='test',activity=act_test_lab$label,subject=sub_test$id, test)

#combine into one dataset
data<-rbind(train,test)

#new dataset for q5
q5<-aggregate(data[,4:69],list(subject=data$subject ,activity=data$activity), mean)
q5<-q5[order(q5$subject, q5$activity),]

write.table(q5, 'Ass1Q5.txt', row.names=F)