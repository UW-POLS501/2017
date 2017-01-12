#### Lab challenge: Plots with ggplot and gapmider data

#### Preliminaries
### Load libraries and install new packages
library(tidyverse)

#install.packages("gapminder")

library("gapminder")

### Load the data
data("gapminder")

### What's in the gapminder dataframe?
?gapminder
gapminder

## Challenge 1: Create a histogram of life expectancy using the gapminder data

ggplot(gapminder, aes(x = lifeExp)) +
  geom_histogram()

### Challenge 2a: Create a scatterplot with the gapminder data with life expectancy on the y axis and 
### GDP per capita on the x axis
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

### Challenge 2b: Make the same scatterplot, but now color the points based on the continent
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp,
                      color = continent)) +
  geom_point()

### Challenge 3b: Make the same scatterplot as 2b, but make the size of the points proportional to population
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp,
                      color = continent,
                      size = pop)) +
  geom_point()

### Super challenge: Try to recreate the plot in the included pdf

#pdf("gapminder_super_challenge.pdf", height=5, width=5)
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp,
                      colour = continent,
                      size = pop)) +
  geom_point() +
  facet_wrap(~year, nrow = 3) +
  ggtitle("Life Expectancy vs. GDP per capita (1952-2007)") +
  ylab("Life Expectancy") +
  xlab("GDP per capita")
#dev.off()
