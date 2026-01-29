load("air.RData")

air$emissions <- as.numeric(air$emissions)

air <- air |>
  group_by(pollutant) |>
  summarise(emissions = sum(emissions, na.rm = TRUE)) |>
  arrange(desc(emissions))
  
#View(air)
save(air, file="6.RData")