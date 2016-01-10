dataLocation <- "E:/Coursera/Exploratory Data Analysis/household_power_consumption.txt"

mydata <- read.table(dataLocation,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")

requiredData <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

submetering1 <- as.numeric(requiredData$Sub_metering_1)

submetering2 <- as.numeric(requiredData$Sub_metering_2)

submetering3 <- as.numeric(requiredData$Sub_metering_3)

time_date <- strptime(paste(requiredData$Date, requiredData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)

plot(time_date, submetering1, type = "l", xlab="", ylab="Energy sub metering")

lines(time_date,submetering2, type = "l",col = "red")

lines(time_date,submetering3, type = "l",col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=3, col=c("black", "red", "blue"))

dev.off()