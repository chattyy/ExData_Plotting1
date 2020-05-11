file <- "/Users/eshanchatty/Downloads/household_power_consumption.txt"
ucw <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- ucw[ucw$Date %in% c("1/2/2007","2/2/2007") ,]


GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width=600, height=600)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

