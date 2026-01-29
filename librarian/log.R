books <- read.csv("books.csv")

#Writer book
#authorFilter <- books$author == "Mia Morgan"
#book1 <-books[filter3,]
#View(book1)

#Musician
#filter2 <- books$topic == "Music" & books$year == 1613
#book2 <- books[typeFilter,]
#View(book2)

#Traveler
#filter3 <- books$year == 1775 & books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova" 
#book3 <- books[filter3,]
#View(book3)

#Painter
#topicFilter <- books[books$topic == "Art",]
#Now filter the page numbers from the already filtered topic data.
#pageAmountFilter <- topicFilter[topicFilter$pages >= 200 & topicFilter$pages <= 300,]
#Filter for 1990 or 1992
#yearFilter1 <- pageAmountFilter[pageAmountFilter$year == 1990 | pageAmountFilter$year == 1992,]
#View(yearFilter1)

#Scientist
#Using grep and ".*" it matches any sequence of characters. aka "Wildcard"
#titles <- books$title
#foundBooks <- grep("Quantum Mechanics.*", titles, value = TRUE)
#View(foundBooks)

#The Teacher
authors <- read.csv("authors.csv")
topicFilter <- books[books$topic == "Education",]
yearFilter <- topicFilter[topicFilter$year >= 1700 & topicFilter$year <= 1799,]
#Now we try to find the author from the current books left yearFilter
authorFilter <- authors[authors$hometown == "Zenthia",]
#now filter the results from both tables using %in% to find where it is true
answer <- yearFilter[yearFilter$author %in% authorFilter$author, ]
View(answer)