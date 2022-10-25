#hello world
class2022 <- read.csv("data.csv", sep=",")
class2022
View(class2022)

class2022 <- class2022[-1, ]

View(class2022)

programmers <- class2022[class2022$Profile == "Programmer", ]
Designers <- class2022[class2022$Profile == "Designer", ]
Artists <- class2022[class2022$Profile == "Artist", ]

meanProgExtrov <- mean(programmers$Extroversion)
meanDesignExtrov <- mean(Designers$Extroversion)
meanArtExtrov <- mean(Artists$Extroversion)

barplot(c(meanProgExtrov, meanDesignExtrov, meanArtExtrov), main = "Mean of extroversion", ylab = "% of extroversion", names.arg = c("Programmers", "Designers", "Artists"), col = c("pink", "orange", "brown"))

mens <- class2022[class2022$Sex..F.M..... == "M", ]
woman  <- class2022[class2022$Sex..F.M..... == "F", ]

mean(mens$Extroversion)
mean(woman$Extroversion)

