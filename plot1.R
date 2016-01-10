dataLocation <- "E:/Coursera/Exploratory Data Analysis/household_power_consumption.txt"

mydata <- read.table(dataLocation,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")

requiredData <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

GlobalActivePower <- as.numeric(requiredData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()