
#searchArrays takes a list of sorted vectors as an argument 
#and finds the kth smallest common element 
#note that the input sorted vectors must be sorted descending

searchArrays <- function(array.list,k=1){
    element.vector<-vector()
    for(e in 1:length(array.list)){
      array.list.search<-array.list[!1:length(array.list) %in% e]
      for(p in 1:length(array.list[[e]])){
        x.search<-array.list[[e]][p]
        element.vector<-x.search
        for(l in 1:length(array.list.search)){
          for(n in 1:length(array.list.search[l])){
            element.vector<-append(element.vector,array.list.search[[l]][n])
            if(length(element.vector)==length(array.list) & 
                 range(element.vector)[1]==range(element.vector)[2]){
              return(element.vector)
            }
          } 
        }
      }
    }
    if(length(element.vector)==length(array.list) & 
         range(element.vector)[1]==range(element.vector)[2]){
      print(element.vector)
    } else { print("Error: no common element across arrays") }
}
 

