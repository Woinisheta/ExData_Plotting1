#to read the household power consumption txt file, to subset data for the two days 
#(01 & 02 Feb 2007) 
HHdata <- read.table("household_power_consumption.txt",stringsAsFactors = FALSE, 
                     header = TRUE, sep= ";", na.strings = "?")
View (HHdata)
HHdata1 <-rbind(HHdata[HHdata$Date=="1/2/2007",],HHdata[HHdata$Date=="2/2/2007",])

#to transform the Date variable to Date format and to have Date and Time variable
HHdata1$Date <- as.Date(HHdata1$Date,format="%d/%m/%Y")
View (HHdata1)
HHdata1<-cbind(HHdata1, "DateTime" = as.POSIXct(paste(HHdata1$Date, HHdata1$Time)))
#and to construct global active power plot and save plot as png
png ("plot1.png", width=480, height=480)
hist(as.numeric(HHdata1$Global_active_power), col="Red", 
     main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.off()
