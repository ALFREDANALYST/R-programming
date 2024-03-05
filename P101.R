library("tidyverse")
library("lubridate")
library("ggplot2")

mri <- read.csv("E:/R-programming/mri.csv")

head(mri)

colnames(mri)

glimpse(mri)

str(mri)

dim(mri)

summary(mri)

anavex2 <- read.csv("E:/R-programming/anavex2.csv")

head(anavex2)

colnames(anavex2)

glimpse(anavex2)

str(anavex2)

dim(anavex2)

summary(anavex2)

View(mri)

View(anavex2)

install.packages("calibrate")
install.packages("corrplot")
install.packages("Correlplot")

library(calibrate)
library(corrplot)
library(Correlplot)

minid <- min(mri$SUBJID)

maxid <- max(mri$SUBJID)

ggplot(data = mri) +
  geom_point(mapping = aes(x = AGE, y = MMSE)) +
  labs(title="COMPARISON OF PATIENTS AGES AND MMSE AT FACILITY X",
       caption=paste0("Data from: ", minid, " to ", maxid),
       x = "AGE OF PATIENT",
       y = "MMSE")

ggsave('AGE AND MMSE(SUBJID;101003-115005).png',
       width=16,
       height=8)

install.packages("installr")

library("installr")

updateR()

update.packages()

installed.packages()

install.packages("calibrate")
install.packages("corrplot")
install.packages("Correlplot")

library(calibrate)
library(corrplot)
library(Correlplot)

library(skimr)
library(janitor)
library(dplyr)

library("tidyverse")
library("lubridate")
library("ggplot2")

mri <- read.csv("E:/R-programming/mri.csv")

anavex2 <- read.csv("E:/R-programming/anavex2.csv")

cor('AGE','MMSE')

as.numeric('MMSE')

cor('AGE','MMSE')

table.cor = cor(mri)

m = cor(mri)

str(mri)

mri[AGE].corr(mri[MMSE])

lapply(mri, as.numeric)

str(mri)

class(mri$AGE) = "Numeric"

str(mri)

cor('AGE','MMSE')

mri$AGE = as.numeric(as.integer)

str(mri)

na.omit(mri)

na.omit(anavex2)

mri$AGE = as.numeric(as.integer)

anavex_2 <- rename(anavex2, SUBJID = Subject.ID)

View(anavex_2)

brain <- merge(mri, anavex_2)

View(brain)

brain_1 <- na.omit(brain)

View(brain_1)

str(brain_1)

#AGE AND MMSE
ggplot(data = mri) +
  geom_point(mapping = aes(x = AGE, y = MMSE, color = SEX)) +
  labs(title="COMPARISON OF PATIENTS AGES AND MMSE AT FACILITY X",
       caption=paste0("SUBJID: ", minid, " to ", maxid),
       x = "AGE OF PATIENT",
       y = "MMSE")

#AGE AND BRAIN VOLUME

#AGE AND BRAIN VOLUME


#HISTOGRAMS
hist(brain_1$ICV..ml.)
hist(brain_1$AGE)
hist(brain_1$Whole.brain..combined.WM.and.GM...ml.)
hist(brain_1$Whole.brain..combined.WM.and.GM.....ICV.)
hist(brain_1$Whole.brain..combined.WM.and.GM...mL.change.from.baseline.)
hist(brain_1$MMSE)

install.packages("GGally")
library("GGally")
ggpairs(brain_1,cardinality_threshold = NULL)

###cardinality_threshold=51

mri_1 <- na.omit(mri)
ggpairs(mri_1)

ggsave('ggpairs_mri_photo.png',
       width = 16,
       height = 8)

ggpairs(brain_1)



