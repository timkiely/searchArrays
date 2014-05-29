

source(paste0(getwd(),"/","searchArrays.R"))
##for testing

#testing with no common element
test<-list(letters[1:5],letters[6:10],letters[11:15])

#testing normal arrays
test.gen<<-function(n){sort(sample(letters,n,replace=T))}; 
test<-list()
for(i in 1:5){
  a<-list(test.gen(100))
  test<-append(test,a)
}

searchArrays(test)