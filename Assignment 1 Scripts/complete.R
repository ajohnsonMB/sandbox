## Part 2

complete <- function(directory, id = 1:332){
  #find the directory
  pfiles <- list.files(directory, full.names = TRUE)
  #create dataframe to drop data into for analysis
  polldf <- data.frame()
     
  #insert data from multiple files into frame
    for (i in id){
      idnumbers <- read.csv(pfiles[i], header=TRUE)
      completepolldf <- data.frame(id = i, nobs = sum(complete.cases(idnumbers)))
      polldf <- rbind(polldf, completepolldf)
      
    }
  
  #return some sort of count function in dataframe with 2 col
      return(polldf)
  
}