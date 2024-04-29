#---------------
# Histogram in R
#---------------

library(tidyverse)
data(iris)

# 1. Histogram
ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram( color = 'black', fill = 'darkred', binwidth = 0.3) +
  labs(title = 'Histogram',
       subtitle = 'iris dataset',
       y="count", x="Sepal Width") +
  theme(axis.text=element_text(size=8),
        axis.title=element_text(size=8),
        plot.subtitle=element_text(size=10, face="italic", color="darkred"),
        panel.background = element_rect(fill = "white", colour = "grey50"),
        panel.grid.major = element_line(colour = "grey90"))

# 2. Histogram by group
ggplot(iris, aes(x = Petal.Length, color = Species, fill = Species)) +
  geom_histogram( color = 'black', binwidth = 0.3, alpha = 0.4) +
  labs(title = 'Histogram by group',
       subtitle = 'iris dataset',
       y="count", x="Sepal Width") +
  theme(axis.text=element_text(size=8),
        axis.title=element_text(size=8),
        plot.subtitle=element_text(size=10, face="italic", color="darkred"),
        panel.background = element_rect(fill = "white", colour = "grey50"),
        panel.grid.major = element_line(colour = "grey90"))

#----
# end
#----