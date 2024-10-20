# load packages
library(tidyverse)
library(gtsummary)
library(gt)

# import data
data <-readRDS("data/AMR_KAP_No_Code_processed.rds")

# Table 6: Factors associated with levels of practice
data |>
  select(1:9, 45) |>
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean}±{sd}"
    )
  ) |>
  as_gt() |>
  gtsave("tables/table06.docx")

 # check data
glimpse(data)

# correlations
cor(data$PracticePCT, data$TotalPracticeScore)

#correlation matrix
data |>
  select(25:37) |>
  correlation() |>
  summary(redundant = T) |>
  plot ()
  
  
  
  
  
  
  
  
  