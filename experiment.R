#hello world
class2022 <- read.csv("data.csv", sep=",")
class2022
View(class2022)

class2022 <- class2022[-1, ]

View(class2022)

programmers <- class2022[class2022$Profile == "Programmer", ]
Designers <- class2022[class2022$Profile == "Designer", ]
Artists <- class2022[class2022$Profile == "Artist", ]

mean(programmers$Extroversion)
mean(Designers$Extroversion)
mean(Artists$Extroversion)