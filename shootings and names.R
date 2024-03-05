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

shootings <- read.csv("E:/R-programming/SchoolShootingsUSA.csv")

names <- read.csv("E:/R-programming/TopBabyNamesbyState.csv")

phone <- read.csv("E:/R-programming/Phone specifications.csv")

ggpairs(phone)

####phone(phone specifications dataset)
head(phone)

colnames(phone)

glimpse(phone)

str(phone)

dim(phone)

summary(phone)

View(phone)

#histograms
hist(phone$battery_power)

hist(phone$blue)

hist(phone$clock_speed)

hist(phone$dual_sim)

hist(phone$fc)

hist(phone$four_g)

hist(phone$int_memory)

hist(phone$m_dep)

hist(phone$mobile_wt)

hist(phone$n_cores)

hist(phone$pc)

hist(phone$px_height)

hist(phone$px_width)

hist(phone$ram)

hist(phone$sc_h)

hist(phone$sc_w)

hist(phone$talk_time)

hist(phone$three_g)

hist(phone$touch_screen)

hist(phone$wifi)

hist(phone$price_range)

plot(phone)

######shootings dataset
head(shootings)

colnames(shootings)

glimpse(shootings)

str(shootings)

dim(shootings)

summary(shootings)

View(shootings)
      
ggpairs(shootings)

hist(shootings$Incident.ID)

hist(shootings$Incident.Date)

hist(shootings$Victims.Killed)

hist(shootings$Victims.Injured)

hist(shootings$Suspects.Killed)

hist(shootings$Suspects.Arrested)

mindate <- min(shootings$Incident.Date)

maxdate <- max(shootings$Incident.Date)

ggplot(data = shootings) +
  geom_line(mapping = aes(x = Incident.Date, Incident.ID)) +
  labs(title="Comparison of Date and Incidents",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "rating",
       y = "number of films")

##importing excel files

library(readxl)

setwd("E:/R-programming")

shooting <- read_excel("SchoolShootingsUSA.xlsx")

head(shooting)

colnames(shooting)

glimpse(shooting)

str(shooting)

dim(shooting)

summary(shooting)

View(shooting)

ggpairs(shooting)

hist(shootings$Incident.ID)

hist(shooting$Incident.Date)

hist(shooting$Victims.Killed)

hist(shooting$Victims.Injured)

hist(shooting$Suspects.Killed)

hist(shooting$Suspects.Arrested)

remove("shootings")

remove("mindate")

remove("maxdate")

rename(shooting, Incident_Date = 'Incident Date')

###dealing with spaces in excel datasets in R
mindate <- min(shooting$'Incident Date')

maxdate <- max(shooting$'Incident Date')

top_states <- group(shooting$`Victims Killed`,decreasing = TRUE,)

ggplot(data = top_states) +
  geom_bar(mapping = aes(x = State)) +
  labs(title="Comparison of Date and Incidents",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "rating",
       y = "number of films")

####names dataset

head(names)

colnames(names)

glimpse(names)

str(names)

dim(names)

summary(names)

View(names)

ggplot(data = names) +
  geom_bar(mapping = aes(x = Gender)) +
  labs(title="Comparison of Date and Incidents",
       x = "rating",
       y = "number of films")

