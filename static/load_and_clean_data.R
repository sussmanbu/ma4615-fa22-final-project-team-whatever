library(tidyverse)

nutrition_data <- readxl::read_xlsx("dataset/Nutrition-Dataset.xlsx")

## CLEAN the data
loan_data_clean <- loan_data

write_csv(loan_data_clean, file = here::here("dataset", "loan_refusal_clean.csv"))

save(loan_data_clean, file = here::here("dataset/loan_refusal.RData"))