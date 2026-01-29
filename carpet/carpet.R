calculate_growth_rate <- function(years, visitors) {
  
  latest_year <- max(years)
  latest_visitors <- visitors[years == latest_year]
  first_year <- min(years)
  first_visitors <- visitors[years == first_year]
  
  rate <- (latest_visitors - first_visitors) / (latest_year - first_year)
  return(rate)
}

predict_visitors <- function(years, visitors, year) {
  
  latest_year <- max(years)
  first_year <- min(years)
  latest_visitors <- visitors[years == latest_year]

  yearly_growth_rate <- calculate_growth_rate(years, visitors)
  year_span <- year - latest_year
  prediction <- latest_visitors + (yearly_growth_rate * year_span)
  return(prediction)
  
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
