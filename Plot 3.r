file <- "/Users/eshanchatty/Downloads/household_power_consumption.txt"
ucw <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- ucw[ucw$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subsetdata$Global_active_power)
submetering1 <- as.numeric(subsetdata$Sub_metering_1)
submetering2 <- as.numeric(subsetdata$Sub_metering_2)
submetering3 <- as.numeric(subsetdata$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(date_time, submetering1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, submetering2, type="l", col="red")
lines(date_time, submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
