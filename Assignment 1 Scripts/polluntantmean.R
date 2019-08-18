## Part 1
## function to calculate the polutant mean of the csv

pollutantmean <- function (directory, pollutant, id=1:332){
  pfiles <- list.files(directory, full.names=TRUE)
  #create dataframe to drop data into for analysis
  polldf <- data.frame()
  
  #insert data from multiple files into frame
  for (i in id){
    idnumbers <- read.csv(pfiles[i], header=TRUE)
    polldf <- rbind(polldf, idnumbers)
  }
  #return the mean for the specified pollutant and remove NAs
  return(mean(polldf[,pollutant],na.rm = TRUE))
}