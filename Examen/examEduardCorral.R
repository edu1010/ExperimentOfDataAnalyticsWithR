#Eduard Corral
#Option B
data <- read.csv("gpa.csv", sep=",")
#1
str(data)
list(data)
#2
colnames(data)[6] <- "gpa"
#3
unique(data$white)
data$white[data$white=="true" ] <- "TRUE"
data$white[data$white=="false" ] <- "FALSE"

data$white[data$black=="true" ] <- "TRUE"
data$white[data$black=="false" ] <- "FALSE"
unique(data$white)
#4
length(data$sat[data$gpa>3])
#5
males <- length(data$sat[data$gpa>3 & data$female=="FALSE"])
males
famele <- length(data$sat[data$gpa>3 & data$female=="TRUE"])
famele
#6
boxplot(data$gpa,xlab ="GPA",lebel = c("males","fameles"))
#7
numAthletes<-length(data$athlete[data$athlete=="TRUE"])
numAthletes
numAthletesFameles<-length(data$athlete[data$athlete=="TRUE" & data$female=="TRUE"])
numAthletesFameles

percentage<- (numAthletesFameles *100)/numAthletes
percentage
#8
sat<- data$sat

data ['satL']<-sat
#he añadido el as.numeric porque había algunos valores que ignoraba pero esto causa un warning
data$satL[as.numeric(data$satL) >= 400 & as.numeric(data$satL) < 800 ] <- "C"
data$satL[as.numeric(data$satL) >= 800 & as.numeric(data$satL) < 1200 ] <- "B"
data$satL[as.numeric(data$satL) >= 1200 & as.numeric(data$satL) <= 1600 ] <- "A"
#9
numberofA<-length(data$sat[data$satL=="A"])
numberofB<-length(data$sat[data$satL=="B"])
numberofC<-length(data$sat[data$satL=="C"])
vectorPie<-c(numberofA,numberofB,numberofC)
pie(vectorPie,labels = c("A","B","C"))
#10

total<-sum(data$gpa[data$female=="TRUE"],na.rm = TRUE)
total
counter<-length(data$gpa[data$female=="TRUE"])
counter
meanOfFameles <-total/counter
meanOfFameles

#11
values<- sort(data$sat, decreasing = TRUE)
values<- values[0:10]
values
#12
positionsToDelete <- which(is.element(data$sat,values)) 
positionsToDelete
data <- data[-positionsToDelete, ]
