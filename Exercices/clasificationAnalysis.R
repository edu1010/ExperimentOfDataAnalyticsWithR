mcharges <- c(50,70,20,30,25)
tenure <- c(1,20,3,5,10)
churn <- c("N0", "NO", "YES", "YES", "NO")
ds <- data.frame(mcharges,tenure)
ds['churn']<-churn

#dist<-sqrt(40-ds$mcharges)^2+(10-ds$tenure)^2)

ds[order(ds$distance)]
ds[order(ds$distance),][1:3,]$churn
ds[order(ds$distance), ][1:3, "churn´´"]

output<- 
names(table(output)[which.max(table(output))])

#Exercici classification analysis

mcharges <- c(50,70,20,30,25)
tenure <- c(1,20,3,5,10)
churn <- c("N0", "NO", "YES", "YES", "NO")
ds <- data.frame(mcharges,tenure)
ds['churn'] <- churn


my.customer <- c(40,10)

dist <- sqrt(((my.customer[1] - ds$mcharges)^2) + ((my.customer[2]-ds$tenure)^2))
dist
ds['dist'] <- dist



my.customer <- c(40,10)
KNN.Alg(my.customer, ds)

KNN.Alg <- function (my.customer, ds){
  dist <- sqrt(((my.customer[1] - ds$mcharges)^2) + ((my.customer[2]-ds$tenure)^2))
  dist
  ds['dist'] <- dist
  
  
  #Locate the three most similar ones -> did they churn
  ds[order(ds$dist),] [1:3, ]$churn
  output <- ds[order(ds$dist),] [1:3,  "churn"]
  
  return(output) 
}

names(table(output)) [which.max(table(output))]

