library(tidyverse)
library(skimr)
library(janitor)
library(ggplot2)
netflix <- read.csv("E:/TABLEAU/netflix_titles.csv")
head(netflix)

colnames(netflix)

glimpse(netflix)

str(netflix)

netflix_country2<- 
  filter(netflix, netflix$country == "India")

View(netflix_country2)

mindate <- min(netflix_country2$release_year)

maxdate <- max(netflix_country2$release_year)

ggplot(data = netflix_country2) +
  geom_bar(mapping = aes(x = rating)) +
  labs(title="Comparison of netflix_films by rating in India",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "rating",
       y = "number of films")
ggsave("netflix_country2_rating.png")### image1

ggplot(data = netflix_country2) +
  geom_bar(mapping = aes(x = type)) +
  labs(title="Comparison of netflix_films by type in India",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "film_type",
       y = "number of films")

ggsave("netflix_country2_films.png")#########image2

ggplot(data = netflix_country2) +
  geom_bar(mapping = aes(x = release_year)) +
  labs(title="Comparison of netflix_films by years in India",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "release_year",
       y = "number of films")

ggsave("netflix_country2_year.png")########image3

installed.packages()

install.packages("palmerpenguins")
library("palmerpenguins")
View("palmerpenguins")

dim(netflix)

summary(netflix)

install.packages("corrplot")
library("corrplot")
