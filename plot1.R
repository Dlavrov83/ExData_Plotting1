#Loading the data 
EPC<-read.table("household_power_consumption.txt", header = FALSE, skip = 66637, sep=";", nrows = 2880, 
                col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                              "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plotting and saving
png(filename = "plot1.png",width = 480, height = 480)
hist(EPC$Global_active_power, col = "red", breaks = 11, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()

