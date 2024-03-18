##LOADING LIBRARIES

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


##IMPORTING DATASET

diabetes <- read.csv("E:/PROJECTS/MERISKILL/Project 2 - Diabetes Data/diabetes.csv")

head(diabetes)

colnames(diabetes)

glimpse(diabetes)

str(diabetes)

dim(diabetes)

summary(diabetes)

View(diabetes)

###exploratory analysis of dataset

hist(diabetes$Pregnancies)

hist(diabetes$Glucose)

hist(diabetes$BloodPressure)

hist(diabetes$SkinThickness)

hist(diabetes$Insulin)

hist(diabetes$BMI)

hist(diabetes$DiabetesPedigreeFunction)

hist(diabetes$Age)

hist(diabetes$Outcome)

min(diabetes$Age)

max(diabetes$BloodPressure)

mean(diabetes$BMI)

range(diabetes$Age)

summary(diabetes)



#CHECKING FOR NULLS
is.na(diabetes$Pregnancies)

#plots
plot(diabetes$Age)

plot(diabetes)

plot(diabetes$Outcome)

plot(diabetes$BloodPressure, diabetes$Insulin)

plot(diabetes$Age, diabetes$Insulin)

