library(tidyverse)

ai_ussage <- read_csv("ai_assistant_usage_student_life.csv")

#if final outcome was confused or gave up, then there not satisfied
clean_data <- ai_ussage %>%
  mutate(SatisfactionStatus = if_else(FinalOutcome %in% c("Gave Up", "Confused"), "Unsatisfied", "Satisfied"))

plot_data <- ggplot(clean_data, aes(x = Discipline, fill = SatisfactionStatus)) +
  geom_bar(position = "stack") + 
  labs(title = "Student Satisfaction by Discipline",
       x = "Discipline",
       y = "Count of Students",
       fill = "Status") +
  theme_minimal() +
  scale_fill_manual(values = c("Satisfied" = "#66B2FF", "Unsatisfied" = "#FF9999")) +

  #rotate x axis labels so they dont overlap
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("visualization.png", plot = plot_data)

#View(clean_data)
