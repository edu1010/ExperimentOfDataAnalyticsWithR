data<-read.csv("accidents.csv",sep=",",encoding ="UT8-8",fileEncoding = "latin1")
#1. How many different districts there are in the dataset (column DistN)?
numDistrict<-length(table(data$DistN))#table quantas valores en cada columna
numDistrict
#2. List the names of the different districts in increasing alphabetical order.

alfabetic<-sort(unique(data$DistN),decreasing = FALSE)
alfabetic
#3. Every row refers to an injured person in the accident. Thus, one accident may have more than one row.
#In any case, calculate how many injured people there are for each district.
distritos <- table(data$DistN)
#4. Then, print the name of the district with the greatest number of injured people.
aux=sort(distritos, decreasing = TRUE )
aux[1]
#5. Calculate how many pedestrians (“Vianant”; look at column PersT) are involved, and how many of
#them resulted in “Ferit greu” (as reported in column Vict).
length(which(data$PersT=="Vianant"))
sum(data$PersT =="Vianant")
length(data$PersT[data$PersT=="Vianant"])


length(data$PersT[data$PersT=="Vianant" & data$Vict=="Ferit greu"])

#6. Calculate the mean age of the injured people that died in the accident. To know who died in the accident, look at column Vict.
table(data$Vict)

#"Mort" "Mort (dins 24h posteriors accident)"
data$Edad<-as.numeric(data$Edad)
mean(data$Edad[data$Vict=="Mort" | data$Vict=="Mort (dins 24h posteriors accident)"])

#7. Print a plot that shows how many accidents (injured people) there are per hour. Column Hora stores
#the hour in which the accident happened.

plot(table(data$Hora))

#8. Plot a pie chart that shows the proportion of men and women in the dataset. You need to use column Sexo.
homes<-length(data$Sexo[data$Sexo=="Home"])
dones<-length(data$Sexo[data$Sexo=="Dona"])
v<-c(homes,dones)
pie(v)

#9. Delete column X.1 from the dataset
data <-data[ ,-2]

#10. Search all accidents that occur from 0 until 6 in the morning (both included) and delete them from the dataset
positions <- which(data$Hora>=0 & data$Hora<=6 ) 
data <- data[-positions, ]

#11. Imagine that we want to calculate the distance to a hospital that is located in X=431510.63 and Y=4584212.20. Calculate the distance of every point to this hospital, by applying this formula

X<-431510.63
Y<-4584212.20
#data$dist <- sqrt( (data$X-X)ˆ2 + (data$Y-Y)ˆ2 )
#validation
head(data[,c("X","Y","dist")] )

#12. Now, calculate the accident that occurred closest to this hospital. Print its location (column BarN )
#sum(is.na(DS$dist))
idx <- which.min( data$dist)
data$BarN[idx]
