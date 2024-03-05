library("tidyverse")
library("lubridate")
library("ggplot2")
colnames(netflix)
glimpse(netflix)
netflix_cts <- filter(netflix,
                        (country=="United States" & 
                                  netflix$rating=="PG-13"))
View(netflix_cts)
ggplot(data = netflix_cts) +
  geom_bar(mapping = aes(x =release_year))
ggplot(data = netflix_cts) +
  geom_bar(mapping = aes(x = listed_in))
#united states netflix data
netflix_cts1 <- filter(netflix,country=="United States")
View(netflix_cts1)
ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x =release_year))
ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x = type))
ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x =rating))
ggplot(data = netflix_cts1) +
  geom_point(mapping = aes(x =listed_in, y= type))
ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x =listed_in))
ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x =director))

ggplot(data = netflix_cts1) +
  geom_point(mapping = aes(x =release_year, y= date_added))
mindate <- min(netflix_cts1$release_year)
maxdate <- max(netflix_cts1$release_year)

ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x = type)) +
  labs(title="Comparison of netflix_films by type in the US",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x = type)) +
  labs(title="Comparison of netflix_films by type in the US",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "film_type",
       y = "number of films")
ggsave("netflix_cts_films.png")#########image1

ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x = release_year)) +
  labs(title="Comparison of netflix_films by years in the US",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "release_year",
       y = "number of films")
ggsave("netflix_cts_year.png")########image2

ggplot(data = netflix_cts1) +
  geom_bar(mapping = aes(x = rating)) +
  labs(title="Comparison of netflix_films by rating in the US",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = "rating",
       y = "number of films")
ggsave("netflix_cts_rating.png")
##bigger image
ggsave('netflix_cts_year.png',
       width=16,
       height=8)
