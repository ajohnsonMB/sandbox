##Finding the best hospital in a state

best <- function(state, outcome){
  #read outcome data
  outcomedata<- read.csv("outcome-of-care-measures.csv", colClasses="character")
  
  #check that state and outcome are valid
  if(!outcome %in% c("heart attack", "heart failure", "pneumonia")){
    message("invalid outcome")
  } else if (!state %in% unique(outcomedata$State)){
    message("invalid state")
  }else{
    filtered_outcomedata <- outcomedata %>%
      filter(
        `State`== state
      )%>%
      select(
        Hospital.Name,
        if(outcome == "heart attack"){
          col <-  11
        }
        else if(outcome == "heart failure"){
          col <- 17
        }
        else if(outcome == "pneumonia"){
          col <- 23
        }
      )
  }
  sorted_outcomedata <-
    filtered_outcomedata %>%
    arrange(
      filtered_outcomedata[[2]]
    )
    return(sorted_outcomedata[1,1])
  
  }
    
  best("IN", "heart attack")
  
  #return hospital name in that with the lowest 30-day death rate
  