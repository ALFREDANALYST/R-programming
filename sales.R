library(calibrate)
library(corrplot)
library(Correlplot)

library(skimr)
library(janitor)
library(dplyr)

library("tidyverse")
library("lubridate")
library("ggplot2")

library("GGally")

library(readxl)

setwd("E:/R-programming")

fact <- read_excel("fact_table.xlsx")

customer <- read_excel("customer_dim.xlsx")

item <- read_excel("item_dim.xlsx")

trans <- read_excel("Trans_dim.xlsx")

store <- read_excel("store_dim.xlsx")

time <- read_excel("time_dim.xlsx")

###merging datasets

s1 <- merge(fact, customer)

s2 <- merge(s1,item)

s3 <- merge(s2, trans)

s4 <- merge(s3, store)

sales <- merge(s4, time)

head(sales)

colnames(sales)

glimpse(sales)

str(sales)

dim(sales)

summary(sales)

View(sales)

hist(sales$unit_price)

hist(sales$quantity)

hist(sales$total_price)

hist(sales$hour)

hist(sales$day)

hist(sales$month)

hist(sales$year)

mindate <- min(sales$date)

maxdate <- max(sales$date)

###plots
ggplot(data = sales) +
  geom_bar(mapping = aes(x = year)) +
  labs(title="Comparison of total amount of books sold by quater",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "Quater",
       y = "Total_amount")

ggsave('total_ammount_sold_by_quater.png',
       width=16,
       height=8)###image3

