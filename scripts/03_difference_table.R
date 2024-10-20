# load packages
library(tidyverse)
library(gtsummary)
library(gt)

# import data
data <-readRDS("data/AMR_KAP_No_Code_processed.rds")

# Table 3: Level of KAP towards AMR among parents
data |>
  select(24,25,36,37,44,45) |>
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean}±{sd}"
    )
  ) |>
  as_gt() |>
  gtsave("tables/table03.docx")

# is there a difference in KAP between male and female?
data |>
  select(KnowledgePCT, Parent.s.sex) |>
  tbl_summary(by = Parent.s.sex,
              statistic = list(
                all_continuous() ~ "{mean} ({sd})"
              ))

data |>
  select(AttitudePCT, Parent.s.sex) |>
  tbl_summary(by = Parent.s.sex,
              statistic = list(
                all_continuous() ~ "{mean} ({sd})"
              ))

data |>
  select(PracticePCT, Parent.s.sex) |>
  tbl_summary(by = Parent.s.sex,
              statistic = list(
                all_continuous() ~ "{mean} ({sd})"
              ))
  

  
  
  
  
  
  
  
  
  