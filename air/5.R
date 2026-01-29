load("air.RData")

air <- cleaned |>
  group_by(county) |>
  arrange(desc(emissions)) |>
  distinct(county, .keep_all = TRUE)
  
save(air, file="5.RData")