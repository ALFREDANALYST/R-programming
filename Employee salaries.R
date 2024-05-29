#loading libraries

library(ggplot2)
library(ggmosaic)
library(readr)
library(readxl)

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

#loading data set
employee_salaries <- read_csv("E:/R-PROJECTS/Employee_Salaries.csv")

#Data cleaning and EDA

colnames(employee_salaries)

View(employee_salaries)

sum(is.na(employee_salaries))

sum(duplicated(employee_salaries))

head(employee_salaries)

str(employee_salaries)

glimpse(employee_salaries)

dim(employee_salaries)

summary(employee_salaries)

#analysis of data set.

#TOP AND BOTTOM DEPARTMENTS

#Count the occurrences of each department
department_counts <- employee_salaries %>%
                     group_by(Department) %>%
                     summarise(count = n()) %>%
                     arrange(desc(count))

View(department_counts)

# Select the top 5 departments
top_5_departments <- department_counts %>% top_n(5, wt = count)

View(top_5_departments)

ggplot(data = top_5_departments) +
  geom_col(mapping = aes( x = Department ,y = count )) +
  labs(title = "COMPARISON OF TOP DEPARTMENTS") 

# select the bottom 5 departments
bottom_5_departments <- department_counts %>% top_n(-5, wt = count)

View(bottom_5_departments)

ggplot(data = bottom_5_departments) +
  geom_col(mapping = aes( x = Department ,y = count )) +
  labs(title = "COMPARISON OF BOTTOM DEPARTMENTS") 

#GENDER DISTRIBUTION
gender_distribution <- employee_salaries %>%
                     group_by(Gender) %>%
                     summarise(count = n()) %>%
                     arrange(desc(count))

View(gender_distribution) 

ggplot(gender_distribution, aes(x = "", y = count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Department Distribution") +
  theme_void() + 
  theme(legend.position = "right")

hist(employee_salaries$Base_Salary)

hist(employee_salaries$Overtime_Pay)

hist(employee_salaries$Longevity_Pay)

ggplot(data = employee_salaries) +
  geom_col(mapping = aes( x = Gender ,y = Base_Salary)) +
  labs(title = "COMPARISON OF Gender and Base salary") 

ggplot(data = employee_salaries) +
  geom_col(mapping = aes( x = Gender ,y = Overtime_Pay )) +
  labs(title = "COMPARISON OF Gender and Overtime Pay") 
