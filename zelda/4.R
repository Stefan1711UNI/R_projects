library(dplyr)

load("zelda.RData")

zelda <- zelda %>%
  mutate(year = as.numeric(year)) %>%
  group_by(title) %>%
  filter(year == min(year)) %>%
  ungroup() %>%
  filter(grepl("Shigeru Miyamoto", producers)) %>%
  arrange(year, title, system)

save(zelda, file = "4.RData")
#View(zelda)