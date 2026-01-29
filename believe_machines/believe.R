is_leap_year <- function(year) {
  # 1. Validate Input
  # Ensure the input is numeric
  if (!is.numeric(year)) {
    stop("Input must be a number.")
  }
  
  # 2. Check Logic
  # Logic:
  # - Must be divisible by 4
  # - AND (Not divisible by 100 OR Divisible by 400)
  
  if ((year %% 4 == 0) && ((year %% 100 != 0) || (year %% 400 == 0))) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}