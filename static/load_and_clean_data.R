library(tidyverse)
nd <- readxl::read_xlsx("dataset/Table-7-and-8-Nutrition-EN.xlsx", range="A8:Z225")

## CLEAN the data


#gets rid of NA columns 
loan_data_clean <- nd
 


#Removing Empty Columns
nd <- nd[-c(1,4,6,8,10,12,14,16,18,20,22,24,26)]

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


 
#Changing Chr Values to Numeric and adding NA values
nd$`LowBirthWT%` <- round(as.numeric(nd$`LowBirthWT%`), 2)
nd$`UnWeighted%` <- round(as.numeric(nd$`UnWeighted%`), 2)
nd$`EarlyBreastFeeding%` <- round(as.numeric(nd$`EarlyBreastFeeding%`), 2)
nd$`ExclusiveBreastFeeding%` <- round(as.numeric(nd$`ExclusiveBreastFeeding%`), 2)
nd$`IntroSolidFood%` <- round(as.numeric(nd$`IntroSolidFood%`), 2)
nd$`AllChildrenBF%` <-round(as.numeric(nd$`AllChildrenBF%`),2)
nd$`Poorest20%BF%`<-round(as.numeric(nd$`Poorest20%BF%`),2)
nd$`Richest20%BF%`<-round(as.numeric(nd$`Richest20%BF%`),2)
nd$`DietDiversity%`<-round(as.numeric(nd$`DietDiversity%`),2)
nd$`MinMealFreq%`<-round(as.numeric(nd$`MinMealFreq%`),2)
nd$`MinAcceptDiet%`<-round(as.numeric(nd$`MinAcceptDiet%`),2)
nd$`ZeroVegtable%`<-round(as.numeric(nd$`ZeroVegtable%`),2)




save(nd, file = "dataset/data_file.RData")

library(tidyverse)
U5Mortality <- readxl::read_xlsx("dataset/Mortality-rate-under-five_2021 (1).xlsx", 
                        sheet = "U5MR Country estimates", range="B14:BV600")

## CLEAN the data

#Renaming first 2 Columns
colnames(U5Mortality)
names(U5Mortality)[1] = "Country"
names(U5Mortality)[2] = "Uncertainty.Bounds"


#selecting 'Median Uncertainty Bound' only
U5Mortality <- U5Mortality[U5Mortality$Uncertainty.Bounds == 'Median',]

#Removing "Uncertainty.Bounds" Column
U5Mortality <- U5Mortality[ -c(2) ] 

#Renaming all the other columns

colnames(U5Mortality)
names(U5Mortality)[2] = "1950"
names(U5Mortality)[3] = "1951"
names(U5Mortality)[4] = "1952"
names(U5Mortality)[5] = "1953"
names(U5Mortality)[6] = "1954"
names(U5Mortality)[7] = "1955"
names(U5Mortality)[8] = "1956"
names(U5Mortality)[9] = "1957"
names(U5Mortality)[10] = "1958"
names(U5Mortality)[11] = "1959"
names(U5Mortality)[12] = "1960"
names(U5Mortality)[13] = "1961"
names(U5Mortality)[14] = "1962"
names(U5Mortality)[15] = "1963"
names(U5Mortality)[16] = "1964"
names(U5Mortality)[17] = "1965"
names(U5Mortality)[18] = "1966"
names(U5Mortality)[19] = "1967"
names(U5Mortality)[20] = "1968"
names(U5Mortality)[21] = "1969"
names(U5Mortality)[22] = "1970"
names(U5Mortality)[23] = "1971"
names(U5Mortality)[24] = "1972"
names(U5Mortality)[25] = "1973"
names(U5Mortality)[26] = "1974"
names(U5Mortality)[27] = "1975"
names(U5Mortality)[28] = "1976"
names(U5Mortality)[29] = "1977"
names(U5Mortality)[30] = "1978"
names(U5Mortality)[31] = "1979"
names(U5Mortality)[32] = "1980"
names(U5Mortality)[33] = "1981"
names(U5Mortality)[34] = "1982"
names(U5Mortality)[35] = "1983"
names(U5Mortality)[36] = "1984"
names(U5Mortality)[37] = "1985"
names(U5Mortality)[38] = "1986"
names(U5Mortality)[39] = "1987"
names(U5Mortality)[40] = "1988"
names(U5Mortality)[41] = "1989"
names(U5Mortality)[42] = "1990"
names(U5Mortality)[43] = "1991"
names(U5Mortality)[44] = "1992"
names(U5Mortality)[45] = "1993"
names(U5Mortality)[46] = "1994"
names(U5Mortality)[47] = "1995"
names(U5Mortality)[48] = "1996"
names(U5Mortality)[49] = "1997"
names(U5Mortality)[50] = "1998"
names(U5Mortality)[51] = "1999"
names(U5Mortality)[52] = "2000"
names(U5Mortality)[53] = "2001"
names(U5Mortality)[54] = "2002"
names(U5Mortality)[55] = "2003"
names(U5Mortality)[56] = "2004"
names(U5Mortality)[57] = "2005"
names(U5Mortality)[58] = "2006"
names(U5Mortality)[59] = "2007"
names(U5Mortality)[60] = "2008"
names(U5Mortality)[61] = "2009"
names(U5Mortality)[62] = "2010"
names(U5Mortality)[63] = "2011"
names(U5Mortality)[64] = "2012"
names(U5Mortality)[65] = "2013"
names(U5Mortality)[66] = "2014"
names(U5Mortality)[67] = "2015"
names(U5Mortality)[68] = "2016"
names(U5Mortality)[69] = "2017"
names(U5Mortality)[70] = "2018"
names(U5Mortality)[71] = "2019"
names(U5Mortality)[72] = "2020"


#Changing Chr Values to Numeric and adding NA values
U5Mortality$`1950` <- round(as.numeric(U5Mortality$`1950`), 2)
U5Mortality$`1951` <- round(as.numeric(U5Mortality$`1951`), 2)
U5Mortality$`1952` <- round(as.numeric(U5Mortality$`1952`), 2)
U5Mortality$`1953` <- round(as.numeric(U5Mortality$`1953`), 2)
U5Mortality$`1954` <- round(as.numeric(U5Mortality$`1954`), 2)
U5Mortality$`1955` <- round(as.numeric(U5Mortality$`1955`), 2)
U5Mortality$`1956` <- round(as.numeric(U5Mortality$`1956`), 2)
U5Mortality$`1957` <- round(as.numeric(U5Mortality$`1957`), 2)
U5Mortality$`1958` <- round(as.numeric(U5Mortality$`1958`), 2)
U5Mortality$`1959` <- round(as.numeric(U5Mortality$`1959`), 2)
U5Mortality$`1960` <- round(as.numeric(U5Mortality$`1960`), 2)
U5Mortality$`1961` <- round(as.numeric(U5Mortality$`1961`), 2)
U5Mortality$`1962` <- round(as.numeric(U5Mortality$`1962`), 2)
U5Mortality$`1963` <- round(as.numeric(U5Mortality$`1963`), 2)
U5Mortality$`1964` <- round(as.numeric(U5Mortality$`1964`), 2)
U5Mortality$`1965` <- round(as.numeric(U5Mortality$`1965`), 2)
U5Mortality$`1966` <- round(as.numeric(U5Mortality$`1966`), 2)
U5Mortality$`1967` <- round(as.numeric(U5Mortality$`1967`), 2)
U5Mortality$`1968` <- round(as.numeric(U5Mortality$`1968`), 2)
U5Mortality$`1969` <- round(as.numeric(U5Mortality$`1969`), 2)
U5Mortality$`1970` <- round(as.numeric(U5Mortality$`1970`), 2)
U5Mortality$`1971` <- round(as.numeric(U5Mortality$`1971`), 2)
U5Mortality$`1972` <- round(as.numeric(U5Mortality$`1972`), 2)
U5Mortality$`1973` <- round(as.numeric(U5Mortality$`1973`), 2)
U5Mortality$`1974` <- round(as.numeric(U5Mortality$`1974`), 2)
U5Mortality$`1975` <- round(as.numeric(U5Mortality$`1975`), 2)
U5Mortality$`1976` <- round(as.numeric(U5Mortality$`1976`), 2)
U5Mortality$`1977` <- round(as.numeric(U5Mortality$`1977`), 2)
U5Mortality$`1978` <- round(as.numeric(U5Mortality$`1978`), 2)
U5Mortality$`1979` <- round(as.numeric(U5Mortality$`1979`), 2)
U5Mortality$`1980` <- round(as.numeric(U5Mortality$`1980`), 2)
U5Mortality$`1981` <- round(as.numeric(U5Mortality$`1981`), 2)
U5Mortality$`1982` <- round(as.numeric(U5Mortality$`1982`), 2)
U5Mortality$`1983` <- round(as.numeric(U5Mortality$`1983`), 2)
U5Mortality$`1984` <- round(as.numeric(U5Mortality$`1984`), 2)
U5Mortality$`1985` <- round(as.numeric(U5Mortality$`1985`), 2)
U5Mortality$`1986` <- round(as.numeric(U5Mortality$`1986`), 2)
U5Mortality$`1987` <- round(as.numeric(U5Mortality$`1987`), 2)
U5Mortality$`1988` <- round(as.numeric(U5Mortality$`1988`), 2)
U5Mortality$`1989` <- round(as.numeric(U5Mortality$`1989`), 2)
U5Mortality$`1990` <- round(as.numeric(U5Mortality$`1990`), 2)
U5Mortality$`1991` <- round(as.numeric(U5Mortality$`1991`), 2)
U5Mortality$`1992` <- round(as.numeric(U5Mortality$`1992`), 2)
U5Mortality$`1993` <- round(as.numeric(U5Mortality$`1993`), 2)
U5Mortality$`1994` <- round(as.numeric(U5Mortality$`1994`), 2)
U5Mortality$`1995` <- round(as.numeric(U5Mortality$`1995`), 2)
U5Mortality$`1996` <- round(as.numeric(U5Mortality$`1996`), 2)
U5Mortality$`1997` <- round(as.numeric(U5Mortality$`1997`), 2)
U5Mortality$`1998` <- round(as.numeric(U5Mortality$`1998`), 2)
U5Mortality$`1999` <- round(as.numeric(U5Mortality$`1999`), 2)
U5Mortality$`2000` <- round(as.numeric(U5Mortality$`2000`), 2)
U5Mortality$`2001` <- round(as.numeric(U5Mortality$`2001`), 2)
U5Mortality$`2002` <- round(as.numeric(U5Mortality$`2002`), 2)
U5Mortality$`2003` <- round(as.numeric(U5Mortality$`2003`), 2)
U5Mortality$`2004` <- round(as.numeric(U5Mortality$`2004`), 2)
U5Mortality$`2005` <- round(as.numeric(U5Mortality$`2005`), 2)
U5Mortality$`2006` <- round(as.numeric(U5Mortality$`2006`), 2)
U5Mortality$`2007` <- round(as.numeric(U5Mortality$`2007`), 2)
U5Mortality$`2008` <- round(as.numeric(U5Mortality$`2008`), 2)
U5Mortality$`2009` <- round(as.numeric(U5Mortality$`2009`), 2)
U5Mortality$`2010` <- round(as.numeric(U5Mortality$`2010`), 2)
U5Mortality$`2011` <- round(as.numeric(U5Mortality$`2011`), 2)
U5Mortality$`2012` <- round(as.numeric(U5Mortality$`2012`), 2)
U5Mortality$`2013` <- round(as.numeric(U5Mortality$`2013`), 2)
U5Mortality$`2014` <- round(as.numeric(U5Mortality$`2014`), 2)
U5Mortality$`2015` <- round(as.numeric(U5Mortality$`2015`), 2)
U5Mortality$`2016` <- round(as.numeric(U5Mortality$`2016`), 2)
U5Mortality$`2017` <- round(as.numeric(U5Mortality$`2017`), 2)
U5Mortality$`2018` <- round(as.numeric(U5Mortality$`2018`), 2)
U5Mortality$`2019` <- round(as.numeric(U5Mortality$`2019`), 2)
U5Mortality$`2020` <- round(as.numeric(U5Mortality$`2020`), 2)

#Transform values from rates over 1000 to rates over 100 (i.e. transforming values to %)
U5Mortality <- cbind(U5Mortality$Country,U5Mortality[,2:72]/10)







