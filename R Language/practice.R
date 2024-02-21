#Calculations
num1 = 400.475
num2 = 4523.3232
num = num1 + num2
print(num)

num3 = num*2


#Activity
library(tidyverse)
head(diamonds) # gives few rows of all columns.
str(diamonds) # gives summary of all data set.
glimpse(diamonds) # gives summary.
colnames(diamonds) # gives all column names of the data set.
diamonds = rename(diamonds, carats = carat, colour = color)
colnames(diamonds)
summarise(diamonds, mean_carat = mean(carats))
ggplot(data = diamonds, aes(x = carats, y = price, color = cut)) + geom_point()
ggplot(data = diamonds, aes(x = carats, y = price, color = cut)) + geom_point() + facet_wrap(~cut)


# practice
data(mtcars)
Data_Cars = mtcars
Data_Cars
dim(Data_Cars)

names(Data_Cars)

mean(Data_Cars$wt)
median(Data_Cars$wt)
names(sort(-table(Data_Cars$wt)))[1]

quantile(Data_Cars$wt, c(0.75))

summary(Data_Cars$wt)

#New practice
library(tidyverse)
tidyverse_update() #to check any updates are there in tidyverse packages.
browseVignettes("ggplot2")

#Using pipes with tooth growth exploration data set
data('ToothGrowth')
View(ToothGrowth)
library(dplyr)

#to see data where dose = 0.5
filtered_tg = filter(ToothGrowth, dose == 0.5)
View(filtered_tg)

#to sort data base on len column
arrange(filtered_tg, len)

#nested function
arrange(filter(ToothGrowth, dose == 0.5), len)

#pipe to perform same above action
filtered_toothgrowth = ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)
View(filtered_toothgrowth)

#calculate mean length of tooth under each vitamin category.
mean_length = ToothGrowth %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T),.group = "drop")
View(mean_length)



### working with bookings.csv file ###
library(tidyverse)
df = read_csv("C:/Users/91934/OneDrive/Desktop/Google Data Analytics/R Language/hotel_bookings.csv")
head(df)

View(df)
str(df)
glimpse(df)

new_df1 = select(df, adr, adults)
new_df1
mutate(new_df1, total = adr*adults)

colnames(df)
skim_without_charts(df)

new_df2 = select(df, hotel, is_canceled, lead_time)
View(new_df2)

new_df2 %>% 
  rename(hotel_type = hotel)

new_df3 = df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c(arrival_date_month, arrival_date_year), sep = " ")
new_df3

new_df2 = new_df2 %>% 
  mutate(arrival_month_year = new_df3$arrival_month_year)
new_df2

new_df2 = new_df2 %>% 
  mutate(total_people = df$adults+df$children+df$babies)
new_df2

summary_df = df %>% 
  summarise(total_cancelled = sum(is_canceled), mean_lead_time = mean(lead_time))
summary_df

names(df)

library(ggplot2)

ggplot(data = df) + 
  geom_point(aes(x = lead_time, y = children))

ggplot(data = df) + 
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))

?geom_bar



### TRANSFORMING DATA ###

id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
View(employee)

employee = employee %>% 
  separate(name, into = c("first_name", "last_name"), sep = " ")
employee



### ANSCOOMBES QUARTET ###

# Anscombe's quartet have four datasets that have nearly identical summary statistics.
install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)

quartet %>% 
  group_by(set) %>% 
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))

ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) + geom_point() + theme_void() + theme(legend.position = "none") + facet_wrap(~dataset, ncol = 3)



### THE BIAS FUNCTION ###
install.packages("SimDesign")
library(SimDesign)

actual_temp = c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp = c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)


### NEW HANDS ON ACTIVITY ###
library(tidyverse)
hotel_data = read_csv("C:/Users/91934/OneDrive/Desktop/Google Data Analytics/R Language/hotel_bookings.csv")
head(hotel_data)
colnames(hotel_data)
ggplot(data = hotel_data, mapping = aes(x = distribution_channel, color = distribution_channel, shape = distribution_channel)) + geom_bar()
ggplot(data = hotel_data, mapping = aes(x = distribution_channel), fill = deposit_type) + geom_bar(color = "blue", fill = "red")
ggplot(data = hotel_data, mapping = aes(x = distribution_channel)) + geom_bar() + facet_wrap(~deposit_type) + theme(axis.text.x = element_text(angle = 45))
ggplot(data = hotel_data, mapping = aes(x = distribution_channel)) + geom_bar() + facet_wrap(~market_segment) + theme(axis.text.x = element_text(angle = 45))
ggplot(data = hotel_data, mapping = aes(x = distribution_channel)) + geom_bar() + facet_wrap(~deposit_type~market_segment) + theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_data, mapping = aes(x = hotel, fill = market_segment)) + geom_bar()
ggplot(data = hotel_data, mapping = aes(x = hotel)) + geom_bar() + facet_wrap(~market_segment)

hotel_data %>% 
  filter(hotel == "City Hotel") %>% 
  filter(market_segment == "Online TA") %>% 
  ggplot(mapping = aes(x = lead_time, y = children)) + geom_point()


df_hotel = hotel_data %>% 
  filter(hotel == "City Hotel") %>% 
  filter(market_segment == "Online TA")
df_hotel

mindate <- min(hotel_data$arrival_date_year)
maxdate <- max(hotel_data$arrival_date_year)
ggplot(data = hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")
ggsave("image.png")
