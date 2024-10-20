#load packages
library(tidyverse)
write.csv(data2, "E:\\CHIRAL\\R\\Assignment\\AMR_KAP-\\raw_data\\AMR_KAP_No_Code.csv", row.names=F)

# read data
data2 <- read.csv("raw_data/AMR_KAP_No_Code.csv")
data <- read.csv("raw_data/AMR_KAP_No_Code.csv")


# knowledge on antibiotics summary grouping
data2 <- data |>
  mutate(Knowledge_Status = case_when(
    KnowledgePCT < 50 ~ 0, # Poor
    KnowledgePCT >= 50 ~ 1, # Good
  ))
# check missing
sum(is.na(data2$Knowledge_Status))

# attitude on antibiotics summary grouping
data2 <- data2 |>
  mutate(attitude_Status = case_when(
    AttitudePCT < 50 ~ 0, # Negative
    AttitudePCT >= 50 ~ 1, # Positive
  ))

# check missing
sum(is.na(data2$Attitude_Status))
