fileName <- readline("Enter csv file name: ")

pitStopTime <- read.csv(fileName)

colnames(pitStopTime)

total <- nrow(pitStopTime)

short <- min(pitStopTime$time)

long <- max(pitStopTime$time)

sumLen <- sum(pitStopTime$time)

print(paste0("Total pit stops: ", total))

print(paste0("Shortest pit stop: ", short))

print(paste0("Longest pit stop: ", long))

print(paste0("Total time spent in pit stops: ", sumLen))
