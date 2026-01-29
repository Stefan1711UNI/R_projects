library(dplyr)
load("air.RData")

if (is.character(air$emissions)) {
  air$emissions <- gsub(",", "", air$emissions)
}

air <- air |>
  group_by(level_1, pollutant) |>
  summarise(emissions = sum(emissions, na.rm = TRUE), .groups = "drop") |>
  arrange(level_1, pollutant) |>
  rename(source = level_1)

#View(air_summary)
save(air, file="7.RData")