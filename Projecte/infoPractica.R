#info 
#RMarkdown
#intall lybrary -> tools ->installs package-> RMarkdown

#Exemple lybrary dplyr
library(dplyr)

userid<-c("AA","BB","AA","CX","AA","AB")
minutes<-c(10,4,20,24,18,2)
ds<-data.frame(userid,minutes)

#cuanto tiempo esta cada usuario + de media
summarise(group_by(ds,userid),
          ntimes=length(minutes),
          avmins=mean(minutes))

#exple merge
ds2<-data.frame(id=c("AA","AB","BB","CX"),
                names=c("Mikel","Pau","Marcelino","Jardines"))

merge(ds,ds2,by.x="userid",by.y="id")


