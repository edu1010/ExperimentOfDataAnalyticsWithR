#============= 1 Chest Sizes of the army =======================
chests <- read.csv("chest.csv", sep=",")
# The mean chest size of the soldiers of the sample in cm


unfoldChest<- rep(chests$chest,chests$count)
meanInCm <-mean(unfoldChest)/0.39370
#Standard deviation in cm
sd(unfoldChest)/0.39370

# Boxplot of chest sizes in cm
boxplot(unfoldChest)

#============ 2 Spanish Armada ============================
armada <- read.csv("armada.csv", sep=",")
#1.Number of fleets

length(armada$Armada)

#2.Draw a bar plot with the number of ships per fleet
barplot(armada$ships)

#3.Count the total number of men, how many sailors and how many soldiers. Draw a pie chart.
mens<- sum(armada$men)
soldiers<- sum(armada$soldiers)
sailors<- sum(armada$sailors)
army <- c(soldiers,sailors)
lebels <- c("soldiers","sailors")
pie(army,lebels)
#4.Average number of total men per ship.

sum(armada$men)/sum(armada$ships)


#5.How gunpowder was distributed along the fleet: compute the five numbers and draw a boxplot.
fivenum(armada$gunpowder)
boxplot(fivenum(armada$gunpowder))
#6.Compute the mean and median of gunpowder. Interpret the result.
mean(armada$gunpowder)# mean is the average of gundpower
median(armada$gunpowder)#is you orden the nambers is the 

#7.Search the name of the fleet with the greatest number of men and the one with the greatest amount of artillery and gunpowder.
armada$Armada[armada$men == max(armada$men)]

armada$Armada[armada$artillery == max(armada$artillery)]

armada$Armada[armada$gunpowder == max(armada$gunpowder)]



#8.Since the column men is redundant, delete this column from the dataset.
