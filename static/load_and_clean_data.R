library(tidyverse)
nd <- readxl::read_xlsx("dataset/Table-7-and-8-Nutrition-EN.xlsx", range="A8:Z225")

## CLEAN the data


#gets rid of NA columns 
loan_data_clean <- nd
 


#Removing Empty Columns
nd <- nd[ -c(1,4,6,8,10,12,14,16,18,20,22,24,26) ] 

#Renaming Columns
colnames(nd)
names(nd)[1] = "Country"
names(nd)[2] = "LowBirthWT%"
names(nd)[3] = "UnWeighted%"
names(nd)[4] = "EarlyBreastFeeding%"
names(nd)[5] = "ExclusiveBreastFeeding%"
names(nd)[6] = "IntroSolidFood%"
names(nd)[7] = "AllChildrenBF%"
names(nd)[8] = "Poorest20%BF%"
names(nd)[9] = "Richest20%BF%"
names(nd)[10] = "DietDiversity%"
names(nd)[11] = "MinMealFreq%"
names(nd)[12] = "MinAcceptDiet%"
names(nd)[13] = "ZeroVegtable%"


as.numeric(nd$`LowBirthWT%`)

str(nd)

nd$`LowBirthWT%` <- round(as.numeric(nd$`LowBirthWT%`), 2)






