load("air.RData")

air <- air |> 
  arrange(desc(emissions)) |>
  filter(county == "OR - Crook")

save(air, file="4.RData")
