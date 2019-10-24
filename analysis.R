library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) + 
  geom_bar(with = 0.5, stat = "identity", fill = "darkgray") +
  coord_flip()

ggsave("figs/barplot.png")

