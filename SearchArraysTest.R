
##This file is for testing the searchArrays function in searchArrays.R

path<-(paste0(getwd(),"/","searchArrays"))
setwd(path)

# 1) error testing for no common element
test<-list()
test<-list(letters[1:5],letters[6:10],letters[11:15])
searchArrays(test)

# 2) testing set of arrays m with a common smallest element 
test.gen<<-function(n){sort(sample(letters,n,replace=T))}; 
test<-list()
for(i in 1:5){a<-list(test.gen(100));test<-append(test,a)}
searchArrays(test)
