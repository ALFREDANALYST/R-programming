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

setwd("E:/TABLEAU")

student <- read_excel("student_data.xlsx")

head(student)

colnames(student)

glimpse(student)

str(student)

dim(student)

summary(student)

View(student)

hist(student$`Marital status`)

hist(student$`Application mode`)

hist(student$`Application order`)

hist(student$Course)

hist(student$`evening attendance`)

hist(student$`Previous qualification`)

hist(student$Nacionality)

hist(student$`Mother's qualification`)

hist(student$`Father's qualification`)

hist(student$Displaced)

hist(student$`Educational special needs`)

hist(student$Debtor)

hist(student$`Tuition fees up to date`)

hist(student$Gender)

hist(student$`Scholarship holder`)

hist(student$`Age at enrollment`)

hist(student$International)

hist(student$GDP)

###1.student numbers by output and gender
ggplot(data = student) +
  geom_bar(mapping = aes(x = Gender, fill = Output)) +
  labs(title="Comparison of number of students by Output",
       x = "Gender(1:MALE,0:FEMALE)",
       y = "number of students")

ggsave('student_number_by_output_and_gender.png',
       width=16,
       height=8)##----image1

###2.displaced
ggplot(data = student) +
  geom_bar(mapping = aes(x = Displaced, fill = Output)) +
  labs(title="Comparison of number of students displaced by Output",
       x = "(1:DISPLACED,0:NOT_DISPLACED)",
       y = "number of students")

ggsave('student_number_displaced_by_output.png',
       width=16,
       height=8)##----image2

###3.debt status
ggplot(data = student) +
  geom_bar(mapping = aes(x = Debtor, fill = Output)) +
  labs(title="Comparison of number of students displaced by Output",
       x = "Debt status",
       y = "number of students")

ggsave('student_number_with_debt_by_output.png',
       width=16,
       height=8)##----image3

###4.study time
student_s <- rename(student, study_time = 'evening attendance')

View(student_s)

ggplot(data = student_s) +
  geom_bar(mapping = aes(x = study_time, fill = Output)) +
  labs(title="Comparison of number of students study time  Output",
       x = "study_time",
       y = "number of students")

ggsave('student_number_by studytime_and_output.png',
       width=16,
       height=8)##----image4

###5.special needs
student_n <- rename(student, special_needs = 'Educational special needs')

View(student_n)

ggplot(data = student_n) +
  geom_bar(mapping = aes(x = special_needs, fill = Output)) +
  labs(title="Comparison of number of students with special needs by Output",
       x = "special_needs",
       y = "number of students")

ggsave('student_number_with special needs_and_output.png',
       width=16,
       height=8)##----image5

###6.tuition fees
student_t <- rename(student, tuition = 'Tuition fees up to date')

View(student_t)

ggplot(data = student_t) +
  geom_bar(mapping = aes(x = tuition, fill = Output)) +
  labs(title="Comparison of number of students by tuition status by Output",
       x = "tuition status",
       y = "number of students")

ggsave('student_number_by_tuition_status_and_output.png',
       width=16,
       height=8)##----image6

###7.scholarships
student_h <- rename(student, scholarship = 'Scholarship holder')

View(student_h)

ggplot(data = student_h) +
  geom_bar(mapping = aes(x = scholarship, fill = Output)) +
  labs(title="Comparison of number of students with scholarships by Output",
       x = "Scholarship",
       y = "number of students")

ggsave('student_number_by_scholarship_and_output.png',
       width=16,
       height=8)##----image7

ggpairs(student)

### world food data

food <- read.csv("E:/TABLEAU/world_food_production.csv")

View(food)

head(food)

colnames(food)

glimpse(food)

str(food)

dim(food)

summary(food)

hist(food$rice_production)

hist(food$wheat_production)

hist(food$vegetable_production)

minyear <- min(food$year)

maxyear <- max(food$year)

###1.rice
ggplot(data = food) +
  geom_line(mapping = aes(x = year, y = rice_production)) +
  labs(title="Comparison of global rice_production by years",
       caption=paste0("Data from: ", minyear, " to ", maxyear),
       x = "year",
       y = "rice_production")

ggsave('global_rice_production.png',
       width=16,
       height=8)###image1

###2.wheat
ggplot(data = food) +
  geom_line(mapping = aes(x = year, y = wheat_production)) +
  labs(title="Comparison of global wheat_production by years",
       caption=paste0("Data from: ", minyear, " to ", maxyear),
       x = "year",
       y = "wheat_production")

ggsave('global_wheat_production.png',
       width=16,
       height=8)###image2

###3.vegetable
ggplot(data = food) +
  geom_line(mapping = aes(x = year, y = vegetable_production)) +
  labs(title="Comparison of global vegetable_production by years",
       caption=paste0("Data from: ", minyear, " to ", maxyear),
       x = "year",
       y = "vegetable_production")

ggsave('global_vegetable_production.png',
       width=16,
       height=8)###image3
