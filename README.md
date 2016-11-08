# Assignment1-CleanTrust
Cleaning raw data files from a project about trust and social cues

These data were collected in a lab experiment during Fall 2015 and Winter 2016. The goal is to write R code to consolidate various raw files into a single file with clean data. 
(Side topic: what is "clean" data?)


Here are some of the required sub-tasks:

-- locating and using ID variables to link cases from different raw files. in some cases we will need to resolve discrepancies. one known issue is that in some cases ID was typed wrong in the data collection phase, requiring manual correction in our code. package {dplyr} has a function anti_join that is good for finding non-matching IDs. we should find all cases of non-matching IDs, and manually correct them in the script.
 -- possible such cases: 1grape1230, 3grape1230, 5grape1230
* Ex/ of identifying non-matching errors between raw files
* anti_join(raw1, raw5, by="ID")->compare1and5
* shows 4 non-matching IDs: 1pepper1630, test,     , apple0


-- creating useful variable names and a key linking those names to the full items (e.g. "How many hours of sleep did you get last night?" is the full item and the variable name is "sleep")

-- useful formatting for each variable's data and a key linking this to the source (e.g. participant responses were to a likert scale from "1--strongly disagree to 7--strongly agree" and our data analysis requries just the numeric values)



I have included the cleaning code for a different project as an example.
