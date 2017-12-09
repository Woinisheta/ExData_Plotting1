#to construct plot #4
png ("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(HHdata1$Global_active_power ~ HHdata1$DateTime, type="l")
plot(HHdata1$Voltage ~ HHdata1$DateTime, type="l")

with(HHdata1, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(HHdata1$Sub_metering_2 ~ HHdata1$DateTime, col = 'Red')
lines(HHdata1$Sub_metering_3 ~ HHdata1$DateTime, col = 'Blue')

plot(HHdata1$Global_reactive_power ~ HHdata1$DateTime, type="l")
dev.off()