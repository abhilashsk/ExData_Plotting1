dataLocation <- "E:/Coursera/Exploratory Data Analysis/household_power_consumption.txt"

mydata <- read.table(dataLocation,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")

requiredData <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

GlobalActivePower <- as.numeric(requiredData$Global_active_power)

time_date <- strptime(paste(requiredData$Date, requiredData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(time_date, GlobalActivePower, type = "l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()