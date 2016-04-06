#2.
##subsetting by dates
a<-household_power_consumption
library(lubridate)
in.dates<- a[a[,1] %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(in.dates$Date, in.dates$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(in.dates$Global_active_power)
png(filename = "plot2.png")
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
