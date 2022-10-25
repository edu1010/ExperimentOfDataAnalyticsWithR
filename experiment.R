# Saving the data in the dataset
class2022 <- read.csv("data.csv", sep=",")
class2022

#Deleting the first row
class2022 <- class2022[-1, ]

View(class2022)

# Mean of extroversion by profile
programmers <- class2022[class2022$Profile == "Programmer", ]
Designers <- class2022[class2022$Profile == "Designer", ]
Artists <- class2022[class2022$Profile == "Artist", ]

meanProgExtrov <- mean(programmers$Extroversion)
meanDesignExtrov <- mean(Designers$Extroversion)
meanArtExtrov <- mean(Artists$Extroversion)

# Creation of barplot
barplot(c(meanProgExtrov, meanDesignExtrov, meanArtExtrov), main = "Mean of extroversion", ylab = "% of extroversion", names.arg = c("Programmers", "Designers", "Artists"), col = c("pink", "orange", "brown"))

# Mean of extroversion by genre
mens <- class2022[class2022$Sex..F.M..... == "M", ]
women  <- class2022[class2022$Sex..F.M..... == "F", ]

meanMen <- mean(mens$Extroversion)
meanWomen <-mean(women$Extroversion)

# Creation of pie chart 
lblsMenWomen <- c("Men", "Women")
lblsMenWomen <- paste(lblsMenWomen, c(round(meanMen, 2), round(meanWomen, 2)))

pie(c(meanMen, meanWomen), labels = lblsMenWomen, main = "Mean of extroversion by genre")
