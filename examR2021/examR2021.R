#1. Read the file using the following instruction:
data <- read.csv("WHR.csv", sep=",",header=TRUE)
#2. Print the structure of the dataset (variable names and types)
str(data)
#3. Count how many countries there are in the dataset.
length(data$Country)
#4. Show a list with the different regions, sorted alphabetically.
countries <- unique(data$Region)
countries<-sort(countries)
countries
#5. Count how many countries there are for each region. And plot a pie plot with this information.
table(data$Region)
pie(table(data$Region))
#6. Print the countries that belong to region “Sub-Saharan Africa”.
data$Country[data$Region=="Sub-Saharan Africa"]
#7. Change the names of these two regions:
#• Australia and New Zealand -> AUS
#• Southeastern Asia -> SA
#• Central and Eastern Europe -> CEE
data$Region[data$Region=="Australia and New Zealand" ] <- "AUS"
data$Region[data$Region=="Southeastern Asia"]<-"SA"
data$Region[data$Region=="Central and Eastern Europe"]<-"CEE"
#8. Calulate the mean of the GDP per capita.
mean(data$Economy..GDP.per.Capita.)
#9. Print the name of the country with the greatest GDP per capita.
data$Country[data$Economy..GDP.per.Capita.==max(data$Economy..GDP.per.Capita.)]
#10. Print the names of the 10 countries with the greatest values of GDP per capita and calculate their mean happiness score
values<- sort(data$Economy..GDP.per.Capita., decreasing = TRUE)
values<- values[0:10]
values
data$Country[is.element(data$Economy..GDP.per.Capita.,values)]
mean(data$Happiness.Score[is.element(data$Economy..GDP.per.Capita.,values)])

#Given the previous result, can we say that the average happiness score of the ten richest countries
#(those with the greatest value in GDP per capita) is greater than the average happiness score of all the
#countries?