vadersay <- function(phrase = "I find your lack of faith disturbing...") {
  vader <- c(
  "         _.-'~~~~~~`-._     ",
  "        /      ||      \\   ",
  "       /       ||       \\  ",
  "      |        ||        | ",
  "      | _______||_______ |   ",
  "      |/ ----- \\/ ----- \\|   ",
  "     /  (     )  (     )  \\  ",
  "    / \\  ----- () -----  / \\   ",
  "   /   \\      /||\\      /   \\  ",
  "  /     \\    /||||\\    /     \\ ",
  " /       \\  /||||||\\  /       \\ ",
  "/_        \\o========o/        _\\ ",
  "  `--...__|`-._  _.-'|__...--'  ",
  "          |    `'    |         "
      
  )
  
  output <- paste(phrase, paste(vader, collapse = "\n"), sep = "\n\n")
  return(output)
  
}

cat(vadersay())