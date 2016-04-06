#1.
##subsetting by dates
a<-household_power_consumption
library(lubridate)
strptime(a[,1],format="",tz="")
strptime(a[,2],format="%H:%M:%S",tz="")
in.dates<- a[a[,1] %in% c("1/2/2007","2/2/2007"),]
#hist
global<- as.numeric(in.dates$Global_active_power)
png(filename = "plot1.png",
    width = 480, height = 480)
hist(global, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
