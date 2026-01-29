flavor <- readline("Flavor: ")
caffeine <- readline("Caffeine: ")

check1 <- FALSE
if (flavor == "Light" | flavor == "Bold"){
  check1 <- TRUE
} else {
  cat("Enter either 'Light' or 'Bold' for flavor.")
}

check2 <- FALSE
if (caffeine == "Yes" | caffeine == "No"){
  check2 <- TRUE
} else {
  cat("Enter either 'Yes' or 'No' for caffeine")
}

if (check1 == TRUE & check2 == TRUE){
  output <- ""
  if(flavor == "Light" & caffeine == "Yes"){
    output <- "Green Tea"
  } else if(flavor == "Light" & caffeine == "No"){
      output <- "Chamomile Tea"
  } else if(flavor == "Bold" & caffeine == "No"){
    output <- "Rooibos Tea"
  } else if(flavor == "Bold" & caffeine == "Yes"){
    output <- "Black Tea"
  }
  
  cat("You might like ", output)
}


