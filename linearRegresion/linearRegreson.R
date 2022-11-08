#exemple lineal regresion
load("marketing.rda")
ds<-marketing#ds data sheet

#METHOD
#train the algotith
mylm<- lm(sales~facebook,ds)
# look at the coeficioent
mylm

#4 use the  model to predict new case
#one case
mylm
invest <-100
new.ds <- data.frame(facebook=invest)
predict(mylm,new.ds)
#perform the computations manualy
#several cases
ds$sales
plot(ds$facebook,ds$sales)
abline(mylm)

fb.invest<-seq(0,500,50)
new.ds<-data.frame(facebook=fb.invest)
predict(mylm, new.ds)

