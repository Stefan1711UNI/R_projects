library(tidyverse)

lyrics_text <- read_file("lyrics/beatles.txt")

words_vector <- lyrics_text %>%
  str_to_lower() %>%                     
  str_replace_all("[[:punct:]]", "") %>% 
  str_replace_all("\n", " ") %>%         
  str_squish() %>%                       
  str_split(" ") %>%                     
  unlist()  #convert list to vector

word_counts <- tibble(word = words_vector) %>%
  count(word, sort = TRUE)

lyrics_plot <- word_counts %>%
  head(20) %>%
  ggplot(aes(x = reorder(word, n), y = n)) +
  geom_col(fill = "cornflowerblue") +
  coord_flip() +  
  labs(
    title = "Word Frequency in Lyrics",
    x = "Word",
    y = "Count"
  ) +
  theme_minimal()


ggsave("lyrics.png", plot = lyrics_plot)