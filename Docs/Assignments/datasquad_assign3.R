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

#Eliminate rows that have "test" ID name. 
raw1=raw1[!(raw1$dg1=='test'),]
raw2=raw2[!(raw2$dg1=='test'),]
raw3=raw3[!(raw3$dg1=='test'),]
raw4=raw4[!(raw4$dg1=='test'),]
raw5=raw5[!(raw5$dg1=='test'),]
raw6=raw6[!(raw6$dg1=='test'),]

#Load dplyr. Use anti_join function to compare two files. Order matters. 
compare1to5 = anti_join(raw1, raw5, by="dg1")
compare2to5 = anti_join(raw2, raw5, by="dg1")
compare3to5 = anti_join(raw3, raw5, by="dg1")
#How to create a table (Kai)
#This is a way to create a table of all the mismatched ID's. 
#Feel free to make it more clean/efficient. 

#Import files
raw1 = read.csv("RAW DATA game1_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw2 = read.csv("RAW DATA game2_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw3 = read.csv("RAW DATA game3_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw4 = read.csv("RAW DATA game4_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw5 = read.csv("RAW DATA game5_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)
raw6 = read.csv("RAW DATA Demographics_results FINAL.csv", header=TRUE, stringsAsFactors=FALSE)

#Eliminate rows that have "test" ID name. 
raw1=raw1[!(raw1$dg1=='test'),]
raw2=raw2[!(raw2$dg1=='test'),]
raw3=raw3[!(raw3$dg1=='test'),]
raw4=raw4[!(raw4$dg1=='test'),]
raw5=raw5[!(raw5$dg1=='test'),]
raw6=raw6[!(raw6$dg1=='test'),]

#Load dplyr. Use anti_join function to compare two files. Order matters. 

compare1to5 = anti_join(raw1, raw5, by="dg1")
compare2to5 = anti_join(raw2, raw5, by="dg1")
compare3to5 = anti_join(raw3, raw5, by="dg1")
compare4to5 = anti_join(raw4, raw5, by="dg1")
compare6to5 = anti_join(raw6, raw5, by="dg1")

compare5to1 = anti_join(raw5, raw1, by="dg1")
compare5to2 = anti_join(raw5, raw2, by="dg1")
compare5to3 = anti_join(raw5, raw3, by="dg1")
compare5to4 = anti_join(raw5, raw4, by="dg1")
compare5to6 = anti_join(raw5, raw6, by="dg1")

compare2to1 = anti_join(raw2, raw1, by="dg1")
compare3to1 = anti_join(raw3, raw1, by="dg1")
compare4to1 = anti_join(raw4, raw1, by="dg1")
compare6to1 = anti_join(raw6, raw1, by="dg1")

compare1to2 = anti_join(raw1, raw2, by="dg1")
compare1to3 = anti_join(raw1, raw3, by="dg1")
compare1to4 = anti_join(raw1, raw4, by="dg1")
compare1to6 = anti_join(raw1, raw6, by="dg1")

compare3to2 = anti_join(raw3, raw2, by="dg1")
compare4to2 = anti_join(raw4, raw2, by="dg1")
compare6to2 = anti_join(raw6, raw2, by="dg1")

compare2to3 = anti_join(raw2, raw3, by="dg1")
compare2to4 = anti_join(raw2, raw4, by="dg1")
compare2to6 = anti_join(raw2, raw6, by="dg1")

compare3to4 = anti_join(raw3, raw4, by="dg1")
compare6to4 = anti_join(raw6, raw4, by="dg1")

compare4to3 = anti_join(raw4, raw3, by="dg1")
compare4to6 = anti_join(raw4, raw6, by="dg1")

compare3to6 = anti_join(raw3, raw6, by="dg1")

compare6to3 = anti_join(raw6, raw3, by="dg1")

#Select appropriate column (dg1) and create new column with name of comparison. 
#Lexi's task: create/find a function that, in the new column, names the source of the comparison (instead of having to type "comparison =" etc. all the time)
#compare1to5 = as.data.frame(cbind(compare1to5$dg1, comparison = "1 to 5"))
compare1to5 = as.data.frame(cbind(compare1to5$dg1, names(comparison)))
compare2to5 = as.data.frame(cbind(compare2to5$dg1, comparison = "2 to 5"))
compare3to5 = as.data.frame(cbind(compare3to5$dg1, comparison = "3 to 5"))
compare4to5 = as.data.frame(cbind(compare4to5$dg1, comparison = "4 to 5"))
compare6to5 = as.data.frame(cbind(compare6to5$dg1, comparison = "6 to 5"))

compare5to1 = as.data.frame(cbind(compare5to1$dg1, comparison = "5 to 1"))
compare5to2 = as.data.frame(cbind(compare5to2$dg1, comparison = "5 to 2"))
compare5to3 = as.data.frame(cbind(compare5to3$dg1, comparison = "5 to 3"))
compare5to4 = as.data.frame(cbind(compare5to4$dg1, comparison = "5 to 4"))
compare5to6 = as.data.frame(cbind(compare5to6$dg1, comparison = "5 to 6"))

compare2to1 = as.data.frame(cbind(compare2to1$dg1, comparison = "2 to 1"))
compare3to1 = as.data.frame(cbind(compare3to1$dg1, comparison = "3 to 1"))
compare4to1 = as.data.frame(cbind(compare4to1$dg1, comparison = "4 to 1"))
compare6to1 = as.data.frame(cbind(compare6to1$dg1, comparison = "6 to 1"))

compare1to2 = as.data.frame(cbind(compare1to2$dg1, comparison = "1 to 2"))
compare1to3 = as.data.frame(cbind(compare1to3$dg1, comparison = "1 to 3"))
compare1to4 = as.data.frame(cbind(compare1to4$dg1, comparison = "1 to 4"))
compare1to6 = as.data.frame(cbind(compare1to6$dg1, comparison = "1 to 6"))

compare3to2 = as.data.frame(cbind(compare3to2$dg1, comparison = "3 to 2"))
compare4to2 = as.data.frame(cbind(compare4to2$dg1, comparison = "4 to 2"))
compare6to2 = as.data.frame(cbind(compare6to2$dg1, comparison = "6 to 2"))

compare2to3 = as.data.frame(cbind(compare2to3$dg1, comparison = "2 to 3"))
compare2to4 = as.data.frame(cbind(compare2to4$dg1, comparison = "2 to 4"))
compare2to6 = as.data.frame(cbind(compare2to6$dg1, comparison = "2 to 6"))

compare3to4 = as.data.frame(cbind(compare3to4$dg1, comparison = "3 to 4"))
compare6to4 = as.data.frame(cbind(compare6to4$dg1, comparison = "6 to 4"))

compare4to3 = as.data.frame(cbind(compare4to3$dg1, comparison = "4 to 3"))
compare4to6 = as.data.frame(cbind(compare4to6$dg1, comparison = "4 to 6"))

compare3to6 = as.data.frame(cbind(compare3to6$dg1, comparison = "3 to 6"))

compare6to3 = as.data.frame(cbind(compare6to3$dg1, comparison = "6 to 3"))

#Load plyr. Merge two files at a time. 
library(plyr)
table = rbind.fill(compare1to5, compare2to5)
table = rbind.fill(table, compare3to5)
table = rbind.fill(table, compare4to5)
table = rbind.fill(table, compare6to5)
table = rbind.fill(table, compare5to1)
table = rbind.fill(table, compare5to2)
table = rbind.fill(table, compare5to3)
table = rbind.fill(table, compare5to4)
table = rbind.fill(table, compare5to6)
table = rbind.fill(table, compare2to1)
table = rbind.fill(table, compare3to1)
table = rbind.fill(table, compare4to1)
table = rbind.fill(table, compare6to1)
table = rbind.fill(table, compare1to2)
table = rbind.fill(table, compare1to3)
table = rbind.fill(table, compare1to4)
table = rbind.fill(table, compare1to6)
table = rbind.fill(table, compare3to2)
table = rbind.fill(table, compare4to2)
table = rbind.fill(table, compare6to2)
table = rbind.fill(table, compare2to3)
table = rbind.fill(table, compare2to4)
table = rbind.fill(table, compare2to6)
table = rbind.fill(table, compare3to4)
table = rbind.fill(table, compare6to4)
table = rbind.fill(table, compare4to3)
table = rbind.fill(table, compare4to6)
table = rbind.fill(table, compare3to6)
table = rbind.fill(table, compare6to3)

#change dg1 into different name
"id"->colnames(table)[1]

#sort table alphabetically by id 
table=table[order(table$id),]

#export as csv file
write.csv(table, file="mismatched_id_table_anti_join.csv", row.names=F)



compare3to1 = as.data.frame(cbind(compare3to1$dg1, comparison = "3 to 1"))
compare4to1 = as.data.frame(cbind(compare4to1$dg1, comparison = "4 to 1"))
compare6to1 = as.data.frame(cbind(compare6to1$dg1, comparison = "6 to 1"))

compare1to2 = as.data.frame(cbind(compare1to2$dg1, comparison = "1 to 2"))
compare1to3 = as.data.frame(cbind(compare1to3$dg1, comparison = "1 to 3"))
compare1to4 = as.data.frame(cbind(compare1to4$dg1, comparison = "1 to 4"))
compare1to6 = as.data.frame(cbind(compare1to6$dg1, comparison = "1 to 6"))

compare3to2 = as.data.frame(cbind(compare3to2$dg1, comparison = "3 to 2"))
compare4to2 = as.data.frame(cbind(compare4to2$dg1, comparison = "4 to 2"))
compare6to2 = as.data.frame(cbind(compare6to2$dg1, comparison = "6 to 2"))

compare2to3 = as.data.frame(cbind(compare2to3$dg1, comparison = "2 to 3"))
compare2to4 = as.data.frame(cbind(compare2to4$dg1, comparison = "2 to 4"))
compare2to6 = as.data.frame(cbind(compare2to6$dg1, comparison = "2 to 6"))

compare3to4 = as.data.frame(cbind(compare3to4$dg1, comparison = "3 to 4"))
compare6to4 = as.data.frame(cbind(compare6to4$dg1, comparison = "6 to 4"))

compare4to3 = as.data.frame(cbind(compare4to3$dg1, comparison = "4 to 3"))
compare4to6 = as.data.frame(cbind(compare4to6$dg1, comparison = "4 to 6"))

compare3to6 = as.data.frame(cbind(compare3to6$dg1, comparison = "3 to 6"))

compare6to3 = as.data.frame(cbind(compare6to3$dg1, comparison = "6 to 3"))

#Load plyr. Merge two files at a time. 
library(plyr)
table = rbind.fill(compare1to5, compare2to5)
table = rbind.fill(table, compare3to5)
table = rbind.fill(table, compare4to5)
table = rbind.fill(table, compare6to5)
table = rbind.fill(table, compare5to1)
table = rbind.fill(table, compare5to2)
table = rbind.fill(table, compare5to3)
table = rbind.fill(table, compare5to4)
table = rbind.fill(table, compare5to6)
table = rbind.fill(table, compare2to1)
table = rbind.fill(table, compare3to1)
table = rbind.fill(table, compare4to1)
table = rbind.fill(table, compare6to1)
table = rbind.fill(table, compare1to2)
table = rbind.fill(table, compare1to3)
table = rbind.fill(table, compare1to4)
table = rbind.fill(table, compare1to6)
table = rbind.fill(table, compare3to2)
table = rbind.fill(table, compare4to2)
table = rbind.fill(table, compare6to2)
table = rbind.fill(table, compare2to3)
table = rbind.fill(table, compare2to4)
table = rbind.fill(table, compare2to6)
table = rbind.fill(table, compare3to4)
table = rbind.fill(table, compare6to4)
table = rbind.fill(table, compare4to3)
table = rbind.fill(table, compare4to6)
table = rbind.fill(table, compare3to6)
table = rbind.fill(table, compare6to3)

#change dg1 into different name
"id"->colnames(table)[1]

#sort table alphabetically by id 
table=table[order(table$id),]

#export as csv file
write.csv(table, file="mismatched_id_table_anti_join.csv", row.names=F)



#THIS IS WHERE I AM WORKING ON THE CUSTOM FUNCTION:

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
