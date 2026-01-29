library(dplyr)

load("zelda.RData")

zelda <- zelda %>%
  mutate(year = as.numeric(year)) %>%
  count(year, name = "releases") %>%
  arrange(desc(releases))

save(zelda, file = "2.RData")
#View(zelda)