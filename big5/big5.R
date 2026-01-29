#Read tsv file
score <- read.table(
  "tests.tsv",
  sep = "\t",
  header = TRUE
)

#re-factor gender to string values
score$gender <- factor(
  score$gender,
  labels = c("Unanswered", "Male", "Female", "Other")
)

#New data frame for analysis.csv
analysis <- score[]

#Add new rows plus compute scores for each category
analysis$extroversion <- round((score$E1 + score$E2 + score$E3) / 15, 2)
analysis$neuroticism <- round((score$N1 + score$N2 + score$N3) / 15, 2)
analysis$agreeableness <- round((score$A1 + score$A2 + score$A3) / 15, 2)
analysis$conscientiousness <- round((score$C1 + score$C2 + score$C3) / 15, 2)
analysis$openness <- round((score$O1 + score$O2 + score$O3) / 15, 2)

# Writing data to a CSV file
write.csv(analysis, "analysis.csv")
#View(analysis)
