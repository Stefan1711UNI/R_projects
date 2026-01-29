random_character <- function() {
  # TODO: Return one random letter
  return(sample(letters, 1))
}

print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  for(x in 1:20){
    cat(random_character())
    Sys.sleep(0.25)
  }
}


print_sequence()
