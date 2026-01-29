library(dplyr)

data <- read.csv("air.csv")

air <- data %>%
  as_tibble() %>%
  select(!c(Pollutant.Type, SCC.Code, EIS.Sector, Source.Description, EPA.Region, FIPS)) %>%
  rename(
    state = State,
    county = 'State.County',
    pollutant = POLLUTANT,
    emissions = 'Emissions..Tons.',
    level_1 = 'SCC.LEVEL.1',
    level_2 = 'SCC.LEVEL.2',
    level_3 = 'SCC.LEVEL.3',
    level_4 = 'SCC.LEVEL.4'
  ) %>%
  mutate(emissions = as.numeric(gsub(",", "", emissions)))

save(air, file="air.RData")
