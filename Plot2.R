power_data <- read.table("/Users/hhvandi/Desktop/Coursera Data Science Specialization/Exploratory Data Analysis/Course Project /1/exdata-data-household_power_consumption/household_power_consumption.txt", sep = ";",stringsAsFactors=FALSE, header = TRUE)
head(power_data)
power_data$Date <- as.Date(power_data$Date, format="%d/%m/%Y")
power <- power_data[power_data$Date=="2007-02-01" | power_data$Date== "2007-02-02",]
power <- transform(power, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
power$Global_active_power <- as.numeric(as.character(power$Global_active_power))
png("plot2.png", width=480, height=480)
plot(power$timestamp, power$Global_active_power, type="l", xlab="", ylab= "Global Active Power (kilowatts)")
dev.off()
