bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")

route <- readline("Route: ")

calc_mean <- function(user_input){
  off_peak_mean <- 0
  peak_mean <- 0
  if(user_input %in% bus$route){
    route_data <- bus[bus$route == user_input, ]
    
    route_data$reliability <- route_data$numerator / route_data$denominator
    
    #Off_peak 
    off_peak_data <- route_data[route_data$peak == "OFF_PEAK", ]
    off_peak_mean <- mean(off_peak_data$reliability) * 100
    
    #peak hours
    peak_data <- route_data[route_data$peak == "PEAK", ]
    peak_mean <- mean(peak_data$reliability) * 100

  } else if(user_input %in% rail$route){
    route_data <- rail[rail$route == user_input, ]
    
    route_data$reliability <- route_data$numerator / route_data$denominator
    
    #peak hours
    peak_data <- route_data[route_data$peak == "PEAK", ]
    peak_mean <- mean(peak_data$reliability) * 100
    
    #Off_peak 
    off_peak_data <- route_data[route_data$peak == "OFF_PEAK", ]
    off_peak_mean <- mean(off_peak_data$reliability) * 100
    

  } else{
    cat("Enter valid route.")
  }
  #Print output
  cat("On time", paste0(round(peak_mean), "% of the time during peak hours.\n"))
  cat("On time", paste0(round(off_peak_mean), "% of the time during off-peak hours.\n"))
}


calc_mean(route)

