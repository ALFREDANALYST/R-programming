netflix <- read_csv("netflix_titles.csv")
install.packages(dplyr)
install.packages(XLConnect)
netflix <- read_csv("netflix_titles.csv")
bookings_df <- read_csv("hotel_bookings.csv")
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)
install.packages("dplyr")
library("dplyr")
install.packages("broom")
library("broom")
install.packages("caTools")
library("caTools")
netflix <- read.csv("E:/TABLEAU/netflix_titles.csv")
head(netflix)
colnames(netflix)
glimpse(netflix)
str(netflix)
skim_without_charts(netflix)
installed.packages()
netflix_1 <- netflix %>% 
  select(rating,release_year,duration)
netflix_2 <- netflix %>%
  mutate(cast = cast1 + cast2 + cast3)
netflix_s <- netflix %>%
  summarize(average_duration= mean(duration),
            average_rating = mean(rating))
##country released in
netflix_country1<- 
  filter(netflix, netflix$country=="United States")
head(netflix_1)
head(netflix_s)
head(netflix_country1)

#longest time
arrange(netflix,desc(duration))
#release dates
colnames(netflix)
arrange(netflix,desc(release_year))
#movie type
netflix_type <- 
  filter(netflix, netflix$type == "TV Show")
head(netflix_type)
install.packages('ggplot2')
#graphs
library(ggplot2)
ggplot(data = netflix) +
  geom_bar(mapping = aes(x = type))
ggplot(data = netflix) +
  geom_bar(mapping = aes(x = type, fill = duration))
ggplot(data = netflix) +
  geom_bar(mapping = aes(x = country, fill = type))
ggplot(data = netflix) +
  geom_bar(mapping = aes(x = country)) +
  facet_wrap(~type)
