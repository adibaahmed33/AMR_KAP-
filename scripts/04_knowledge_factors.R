# load packages
library(tidyverse)
library(gtsummary)
library(gt)

# import data
data <-readRDS("data/AMR_KAP_No_Code_processed.rds")

# Table 4: Factors associated with levels of knowledge
data |>
  select(1:9) |>
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean}±{sd}"
    )
  ) |>
  as_gt() |>
  gtsave("tables/table04.docx")

# is there a significant difference?

data |>
  select(1:9) |>
  tbl_summary(by = "Parent.s.sex",
               "Parent.s.education.level", "Employment.status",
               "Family.type",
               "Your.average.household.income.per.month..BDT.",
               "Child.s.sex", "Child.s.age..years.",
               "Number.of.children",
    statistic = list(
      all_continuous() ~ "{mean}±{sd}"
    ))
  add_p() |>
  bold_p(t = 0.05)|>
  as_gt() |>
  gtsave("tables/table04.docx")

# correlation
cor(data$KnowledgePCT, data$TotalKnowledgeScore)








