#DATES AND TIMES IN R

# we can deal with dates and times in R using 'lubridate' package.

library(tidyverse)
library(lubridate)

# we can use today() fuction to get todays year, month and day.
today()
print(today())

# to get the current date time we can use now() function.(accuracy is nearest second)
now()

# R creates dates in the standard yyyy-mm-dd format by default.
# when working with R, there are three ways you are likely to create date-time formats: 
# 1.From a string, 2.From an individual date and 3.From an existing date/time object.

# 1.from a string:
# tools in lubridate library helps us to convert to date time. heres how it go:
# first identify in which format the current date is i.e ymd or mdy or etc. and call the fuction.
# this will convert to ymd format.
date1 = "2004-12-29"
new_date1 = ymd(date1)
print(new_date1)
print(typeof(new_date1))

date2 = "January 26, 1950"
new_date2 = mdy(date2)
print(new_date2)
print(typeof(new_date2))

date3 = "20-Jan-2021"
new_date3 = dmy(date3)
print(new_date3)
print(typeof(new_date3))

date4 = "19471508"
new_date4 = ydm(date4)
print(new_date4)
print(typeof(new_date4))

# 2.date-time string to date-time:
# To create a date-time from a date, add an underscore and one or more of the letters h, m, and s (hours, minutes, seconds) to the name of the function.

date_time1 = "1947-08-15 20:45:50"
print(ymd_hms(date_time1))

date_time2 = "Jan 10th, 3000 20"
print(mdy_h(date_time2))

# 3.from date-time to date:
# we can use as_date() fucntion to covert date-time to date.
print(as_date(date_time1))
print(typeof(as_date(date_time1))) #gives double
