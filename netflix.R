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

netflix_titles <- read.csv("E:/R-programming/netflix_titles.csv")

netflix_directors <- read.csv("E:/R-programming/netflix_directors.csv")

netflix_cast <- read.csv("E:/R-programming/netflix_cast.csv")

netflix_countries <- read.csv("E:/R-programming/netflix_countries.csv")

netflix_category <- read.csv("E:/R-programming/netflix_category.csv")

duplicated("netflix_category")

unique("netflix_titles")

########use join not merge to link up tables#############

netflix <- left_join(netflix_titles, netflix_directors)

View(netflix)

netflix1 <- left_join(netflix, netflix_cast)

View(netflix1)

netflix2 <- left_join(netflix1, netflix_countries)

View(netflix2)

netflix_r <- read.csv("E:/PYTHON/netflix_films.csv")

head(netflix_r)

colnames(netflix_r)

glimpse(netflix_r)

str(netflix_r)

dim(netflix_r)

summary(netflix_r)

View(netflix_r)

netflix_f <- na.omit(netflix_r)

View(netflix_f)

mindate <- min(netflix_f$release_year)

maxdate <- max(netflix_f$release_year)

###image1(rating)
ggplot(data = netflix_f) +
  geom_bar(mapping = aes(x = rating)) +
  labs(title="Comparison of netflix_films by rating",
       caption=paste0("Data from: ", mindate, " to ", 2020),
       x = "rating",
       y = "number of films")


ggsave('netflix_films_rating.png',
       width=16,
       height=8)

##image2(duration_seasons)
ggplot(data = netflix_f) +
  geom_bar(mapping = aes(x = duration_seasons)) +
  labs(title="Comparison of netflix_films by duration_seasons",
       caption=paste0("Data from: ", mindate, " to ", 2020),
       x = "duration_seasons",
       y = "number of films")


ggsave('netflix_films_seasons.png',
       width=16,
       height=8)

##image3(type)
ggplot(data = netflix_f) +
  geom_bar(mapping = aes(x = type)) +
  labs(title="Comparison of netflix_films by type",
       caption=paste0("Data from: ", mindate, " to ", 2020),
       x = "type",
       y = "number of films")

ggsave('netflix_films_type.png',
       width=16,
       height=8)

##image4(release_year)
ggplot(data = netflix_f) +
  geom_bar(mapping = aes(x = release_year)) +
  labs(title="Comparison of netflix_films by release_year",
       caption=paste0("Data from: ", mindate, " to ", 2020),
       x = "release_year",
       y = "number of films")

ggsave('netflix_films_release_year.png',
       width=16,
       height=8)

##image5
ggplot(data = netflix_f) +
  geom_bar(mapping = aes(x = listed_in)) +
  labs(title="Comparison of netflix_films by genre",
       caption=paste0("Data from: ", mindate, " to ", 2020),
       x = "listed_in",
       y = "number of films")

ggsave('netflix_films_listed_in.png',
       width=16,
       height=8)

######histograms
hist(netflix_f$show_id)
