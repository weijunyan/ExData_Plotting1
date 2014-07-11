
house<- read.table(".\\household_power_consumption.txt",sep=";",head=T)
head(house)
dd<-strptime(as.vector(house$Date), "%d/%m/%y%y")
house$Date<-as.Date(dd)
house1<- house[house$Date=="2007-02-01" | house$Date=="2007-02-02",]
week <-paste(house1$Date,house1$Time)
week1 <-strptime(week,"%y%y-%m-%d %H:%M:%S") 
tt1<-as.numeric(as.matrix(house1$Global_active_power))
hist(tt1,col="red",main="Global Active Power",xlab="Golbal Active Power (Kilowatts)")
