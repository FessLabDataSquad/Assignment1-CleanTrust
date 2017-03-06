install.packages("DataCombine")
library(DataCombine)
install.packages("dplyr")
install.packages("tidyr")
library(tidyr)
library(dplyr)


#Import files
raw1 = read.csv("RAW DATA game1_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw2 = read.csv("RAW DATA game2_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw3 = read.csv("RAW DATA game3_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw4 = read.csv("RAW DATA game4_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw5 = read.csv("RAW DATA game5_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw6 = read.csv("RAW DATA Demographics_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)


#THIS IS WHERE I AM WORKING ON THE CUSTOM FUNCTION:
#I am getting stuck on where I should move next, I am not exactly sure.

custom.function <- function(x, y) {
as.data.frame(cbind(anti_join(x,y,by ='dg1'))$dg1 ) #this will get rid of the repeating comparison lines of 
  #code over and over
  #then we want to rename the comparison names, so that way we won't need to continuously re-write 
  #compareAtoB etc. 
  
comparisonX = deparse(substitute(x)) #this gets the name of the function argu.
comparisonY = deparse(substitute(y)) #this gets the name of the function argu.

}

#create a list of combos of x and y's 
#I believe Kai created this list ?

