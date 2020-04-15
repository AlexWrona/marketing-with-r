# Course Users - Select those who enrolled into but did not complete a course
# By Alex Wrona (April 2020)

# Set the working directory to folder where data file is saved 
# (note: R needs the path to be using the forward slash "/" not "\")
setwd("D:/files/marketing")

# Check the working directory to see if you did the previous step correctly
getwd()

# read contact address file into R
userlist <- read.csv("learndash_reports_user_courses_0000.csv",
                     header = TRUE,
                     sep = ",",
                     stringsAsFactors = FALSE)

# Now to filter out the users who have enrolled into a course but did not complete it
library(dplyr)
userlist_cleaned <- filter(userlist, course_title == "Name of Course" & course_completed == "NO")

# Export new dataframe as csv
write.csv(userlist_cleaned, file = "userlist_cleaned.csv", fileEncoding = "UTF-8")