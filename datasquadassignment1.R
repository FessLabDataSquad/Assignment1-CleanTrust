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

# This is one way to look for manual errors within a dataframe. The filter() function is a part of dplyr. The grepl() function searches matching character strings. 
filter(raw1, grepl('apr', dg1))
#  This code gives us 8 results which have the character string "apr" within the ID column. 7 of the IDs contain "apricot", and 1 ID contains "aprciot". 
