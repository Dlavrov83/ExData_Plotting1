#Loading the data 
EPC<-read.table("household_power_consumption.txt", header = FALSE, skip = 66637, sep=";", nrows = 2880, 
                col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                              "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Plotting and saving
png(file = "plot3.png",width = 480, height = 480)
plot(EPC$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="", xaxt = "n")
axis(1, at=1, labels=c("Thu"))
axis(1, at=1440, labels=c("Fri"))
axis(1, at=2880, labels=c("Sat"))
par(new=TRUE) 
plot(EPC$Sub_metering_2, type="l", col="red", ylim=range(c(EPC$Sub_metering_1,EPC$Sub_metering_2)), ylab="", xlab="", xaxt = "n")
par(new=TRUE)
plot(EPC$Sub_metering_3, type="l", col="blue", ylim=range(c(EPC$Sub_metering_1,EPC$Sub_metering_2)), ylab="", xlab="", xaxt = "n")

#Legend setting
myL <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
myC <- c("black", "red", "blue")
legend("topright",col=myC, lwd=0.05, cex=1, legend=myL)

dev.off()