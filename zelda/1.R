library(dplyr)
library(tidyr)
library(readr)

data <- read_csv("zelda.csv")

zelda <- data %>%
  separate(release, into = c("year", "system"), sep = " - ") %>%
  mutate(role = tolower(role)) %>%
  pivot_wider(names_from = role, values_from = names) %>%
  mutate(artists = NA_character_) %>%
  select(title, year, system, directors, producers, designers, 
         programmers, writers, composers, artists)

save(zelda, file = "zelda.RData")
#View(cleaned)
