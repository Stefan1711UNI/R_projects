library(dplyr)
library(stringr)

load("zelda.RData")

zelda <- zelda %>%
  mutate(year = as.numeric(year)) %>%
  group_by(title) %>%
  filter(year == min(year)) %>%
  ungroup() %>%
  filter(str_count(producers, ",") >= 1) %>%
  arrange(year, title, system)

#View(zelda)
save(zelda, file = "5.RData")
  