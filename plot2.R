# and to construct global active power plot

png ("plot2.png", width=480, height=480)
plot(HHdata1$Global_active_power ~ HHdata1$DateTime, type="l", xlab= "", 
     ylab="Global Active power (kilowatts)")
dev.off()