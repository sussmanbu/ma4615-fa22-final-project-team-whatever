library(tidyverse)
nutrition_data <- readxl::read_xlsx("dataset/Nutrition-Dataset.xlsx")
## CLEAN the data
loan_data_clean <- nutrition_data

write_csv(loan_data_clean, file = here::here("dataset", "Nutrition-Dataset.xlsx"))

save(loan_data_clean, file = here::here("dataset/Nutrition-Dataset.xlsx"))

data <- nutrition_data[-(218:246),]

