library(dplyr)
library(tidyr)


# import data
raw1 = read.csv("RAW DATA game1_results FINAL.csv", header=TRUE)
# the line above can be slightly modified to read in the other files, e.g.
raw2 = read.csv("RAW DATA game2_results FINAL.csv", header=TRUE)
# repeat for all of the raw data

# next we'll start merging. in the 2 files included above, the variable to use to merge will be "dg1"

# there's a way to merge with base R, but either tidyR or dplyr would probably be better

# also, eventually we won't want to load the full raw files (as above) -- probably we can just create the merged file as a new object without making an object for the raw file -- it can just read data from it, something like below

full_clean_data = merge (( useful shit from "RAW DATA game1_result FINAL.csv", useful shit from 2, 3, etc, etc...))


# This is one way to format a variable's data. It involves the DataCombine package which is used to clean packages.
install.packages("DataCombine") 
library(DataCombine)
#This example shows how to reformat the Likert scale responses to just the values. Below is a sample data frame (LikertScale). 
LikertScale <- data.frame(ratings=c("1 strongly disagree", "4 neither agree nor disagree", "7 strongly agree"))
# Then, create a dataframe (Replaces) with two columns: left side has the pattern, and right side has the replacement (possible key?) 
Replaces <- data.frame(from=c("1 strongly disagree", "4 neither agree nor disagree", "7 strongly agree"), to=c("1", "4", "7"))  
#This will show as: 
> Replaces
                          from to
1          1 strongly disagree  1
2 4 neither agree nor disagree  4
3             7 strongly agree  7
#Then, use the FindReplace() function, which allows you to replace multiple character string patterns in a df's column. 
ReplacedLikertScale <- FindReplace(data=LikertScale, Var="ratings", replaceData=Replaces, from="from", to = "to")
#Concern: only possible for character strings? 
