power_data <- read.table("/Users/hhvandi/Desktop/Coursera Data Science Specialization/Exploratory Data Analysis/Course Project /1/exdata-data-household_power_consumption/household_power_consumption.txt", sep = ";",stringsAsFactors=FALSE, header = TRUE)
head(power_data)
power_data$Date <- as.Date(power_data$Date, format="%d/%m/%Y")
power <- power_data[power_data$Date=="2007-02-01" | power_data$Date== "2007-02-02",]
hist(power$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off