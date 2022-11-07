
# Now cleaning second dataset, WASH data (water & sanitation)

library(tidyverse)
ndWASH <- readxl::read_xlsx("dataset/JMP-WASH-in-health-care-facilities-2022-data-by-country.xlsx", sheet = "Sanitation")
loan_data_WASH_clean <- ndWASH

#Removing Empty Columns
ndWASH <- ndWASH[ c(1,2,3,4,5,6,7,8,9,20,21,22,23,24) ] 

#Renaming Columns
colnames(ndWASH)
names(ndWASH)[1] = "Country"
names(ndWASH)[2] = "Year"
names(ndWASH)[3] = "Population (thousands)"
names(ndWASH)[4] = "% urban"
names(ndWASH)[5] = "NATIONAL_Basic sanitation services"
names(ndWASH)[6] = "NATIONAL_Limited sanitation services"
names(ndWASH)[7] = "NATIONAL_No sanitation service"
names(ndWASH)[8] = "NATIONAL_Improved"
names(ndWASH)[9] = "NATIONAL_Improved and usable"
names(ndWASH)[10] = "HOSPITAL_Basic sanitation services"
names(ndWASH)[11] = "HOSPITAL_Limited sanitation services"
names(ndWASH)[12] = "HOSPITAL_No sanitation service"
names(ndWASH)[13] = "HOSPITAL_Improved"
names(ndWASH)[14] = "HOSPITAL_Improved and usable"

#Changing Chr Values to Numeric and adding NA values
ndWASH$`Year` <- round(as.numeric(ndWASH$`Year`), 2)
ndWASH$`Population (thousands)` <- round(as.numeric(ndWASH$`Population (thousands)`), 2)
ndWASH$`% urban` <- round(as.numeric(ndWASH$`% urban`), 2)
ndWASH$`NATIONAL_Basic sanitation services` <- round(as.numeric(ndWASH$`NATIONAL_Basic sanitation services`), 2)
ndWASH$`NATIONAL_Limited sanitation services` <- round(as.numeric(ndWASH$`NATIONAL_Limited sanitation services`), 2)
ndWASH$`NATIONAL_No sanitation service` <-round(as.numeric(ndWASH$`NATIONAL_No sanitation service`),2)
ndWASH$`NATIONAL_Improved`<-round(as.numeric(ndWASH$`NATIONAL_Improved`),2)
ndWASH$`NATIONAL_Improved and usable`<-round(as.numeric(ndWASH$`NATIONAL_Improved and usable`),2)
ndWASH$`HOSPITAL_Basic sanitation services`<-round(as.numeric(ndWASH$`HOSPITAL_Basic sanitation services`),2)
ndWASH$`HOSPITAL_Limited sanitation services`<-round(as.numeric(ndWASH$`HOSPITAL_Limited sanitation services`),2)
ndWASH$`HOSPITAL_No sanitation service`<-round(as.numeric(ndWASH$`HOSPITAL_No sanitation service`),2)
ndWASH$`HOSPITAL_Improved`<-round(as.numeric(ndWASH$`HOSPITAL_Improved`),2)
ndWASH$`HOSPITAL_Improved and usable` <- round(as.numeric(ndWASH$`HOSPITAL_Improved and usable`),2)
