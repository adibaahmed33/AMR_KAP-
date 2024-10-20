# load packages
library(tidyverse)
library(gtsummary)
library(gt)

# import data
data <-readRDS("data/AMR_KAP_No_Code_processed.rds")

# Table 1: Demographic characteristics of study participants
data |>
  select(1:11) |>
  tbl_summary() |>
  as_gt() |>
  gtsave("tables/Table1_demographic.docx")

  
# Table 2: Major sources of information about antibiotic parents 














































