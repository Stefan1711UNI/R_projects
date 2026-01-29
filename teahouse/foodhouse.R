#Part2

taste <- readline("Taste (Savory/Sweet): ")
temperature <- readline("Temperature (Hot/Cold): ")

check1 <- FALSE
if (taste == "Savory" | taste == "Sweet") {
  check1 <- TRUE
} else {
  cat("Enter either 'Savory' or 'Sweet' for taste.\n")
}

check2 <- FALSE
if (temperature == "Hot" | temperature == "Cold") {
  check2 <- TRUE
} else {
  cat("Enter either 'Hot' or 'Cold' for temperature.\n")
}

if (check1 == TRUE & check2 == TRUE) {
  output <- ""
  if (taste == "Savory" & temperature == "Hot") {
    output <- "Soup"
  } else if (taste == "Savory" & temperature == "Cold") {
    output <- "Sandwich"
  } else if (taste == "Sweet" & temperature == "Hot") {
    output <- "Pancakes"
  } else if (taste == "Sweet" & temperature == "Cold") {
    output <- "Ice Cream"
  }
  
  cat("You might like", output, "\n")
}