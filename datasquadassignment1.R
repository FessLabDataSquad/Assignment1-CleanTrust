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

# This is one way to look for duplicate IDs (I found this on stackoverflow). 
# Using the table() function will give you a list of all the IDs and the number of times they occured. 
n_occur <- data.frame(table(raw1$dg1))
# You can narrow the list down to IDs that appear more than once
n_occur[n_occur$Freq > 1,]
#This will show as: 
              Var1 Freq
24      1grape1230    2
137     3grape1230    2
273     5grape1230    2
336 trialmorningc3    2
#You can then obtain the records for each duplicated ID
raw1[raw1$dg1 %in% n_occur$Var1[n_occur$Freq > 1],]


