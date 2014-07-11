attach(house1)
week <-paste(house1$Date,house1$Time)
week1 <-strptime(week,"%y%y-%m-%d %H:%M:%S") 
par(mfrow=c(2,2),mar=c(4,4,2,1))

tt1<-as.numeric(as.matrix(house1$Global_active_power))
plot(week1,tt1,type="l",xlab="",ylab="Golbal Active Power (Kilowatts)")

Vo<-as.numeric(as.matrix(house1$Voltage))
plot(week1,Vo,type="l",xlab="datetime",ylab="Voltage")

TT<-house1[,c(7,8,9)]
TT1<-as.numeric(as.matrix(TT[,1]))
TT2<-as.numeric(as.matrix(TT[,2]))
TT3<-as.numeric(as.matrix(TT[,3]))
plot(week1,TT1,type="l",col=1,xlab="",ylab="Enegery Sub metering")
lines(week1,TT2,type="l",col=2)
lines(week1,TT3,type="l",col=4)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c(1,2,4))

Gl<-as.numeric(as.matrix(house1$Global_reactive_power))
plot(week1,Gl,type="l",xlab="datetime",ylab="Global_reactive_power")
