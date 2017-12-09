# and to construct plot3

png ("plot3.png", width=480, height=480)
with(HHdata1, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})

lines(HHdata1$Sub_metering_2 ~ HHdata1$DateTime, col = 'Red')
lines(HHdata1$Sub_metering_3 ~ HHdata1$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()