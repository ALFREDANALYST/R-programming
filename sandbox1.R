install.packages("tidyverse")
library("tidyverse")
head(diamonds)
rename(diamonds, carat_new = carat)
summarize(diamonds, mean_carat = mean(carat))
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)
