library(dplyr)

load("zelda.RData")

zelda <- zelda %>%
  mutate(year = as.numeric(year)) %>%
  group_by(title) %>%
  filter(year == min(year)) %>%
  ungroup() %>%
  arrange(year, title, system)

#View(zelda)
save(zelda, file = "3.RData")