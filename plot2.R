#Loading the data 
EPC<-read.table("household_power_consumption.txt", header = FALSE, skip = 66637, sep=";", nrows = 2880, 
                col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                              "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plotting and saving
png(file = "plot2.png",width = 480, height = 480)
plot(EPC$Global_active_power, type="l", col="black", ylab="Global Active Power (kilowatts)", xlab="", xaxt = "n")
axis(1, at=1, labels=c("Thu"))
axis(1, at=1440, labels=c("Fri"))
axis(1, at=2880, labels=c("Sat"))
dev.off()
