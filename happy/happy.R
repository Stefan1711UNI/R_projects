years <- 2020:2024

u_country <- readline("Country: ")


calculate_happy <- function(country){
  data <- data[data$country == country,]
  
  happiness <- sum(data$gdp, data$support, data$life_expectancy, data$freedom 
                    ,data$generosity, data$corruption, data$residual)

  return(happiness)
}


for (yr in years){
  file_name <- paste0(yr, ".csv")
  data <- read.csv(file_name)
  cat(paste0(u_country," (", yr,"): "))
  
  if(u_country %in% data$country){
    cat(round(calculate_happy(u_country), 2),"\n")
  }
  else{
    cat("Unavailable\n")
  }
}


