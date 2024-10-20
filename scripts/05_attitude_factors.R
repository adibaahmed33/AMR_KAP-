# load packages
library(tidyverse)
library(gtsummary)
library(gt)

# import data
data <-readRDS("data/AMR_KAP_No_Code_processed.rds")

# Table 5: Factors associated with levels of attitude
data |>
  select(1:9, 37) |>
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean}±{sd}"
    )
  ) |>
  as_gt() |>
  gtsave("tables/table05.docx")

# correlation
cor(data$AttitudePCT, data$TotalAttitudeScore)
