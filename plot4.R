makeplot4<-function(data=newdata) {
    png(file="plot4.png", bg="transparent", width=7, height=7, units="in", res=72)
    opar<-par(no.readonly = TRUE) # Save the original parameters.
    par("mfrow"=c(2,2))
    # First upper left plot.
    plot(data$datetime, data$Global_active_power, type="l",
         xlab="",
         ## Remove a label on the X axis
         ylab="Global Active Power (kilowatts)",yaxt="n")
    axis(2, at=c(0,2,4,6,8))
    # Second upper right plot
    plot(data$datetime, data$Voltage, type="l",
         ylab="Voltage", xlab="datetime")
    # Third lower left plot.
    plot(data$datetime, data$Sub_metering_1, type="l",
         xlab="",
         ## Remove a label on the X axis
         ylab="Energy sub metering", yaxt="n", ylim=c(0,38))
    par(new=TRUE)
    plot(data$datetime, data$Sub_metering_2, xlab="", ylab="", type = "l", 
         col="red", yaxt="n", ylim=c(0,38)) 
    par(new=TRUE)
    plot(data$datetime, data$Sub_metering_3, xlab="", ylab="", type = "l", 
         col="blue", yaxt="n", ylim=c(0,38)) 
    legend("topright", 
           legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           col=c("black","red","blue"), lty=1)
    axis(2, at=c(0,10,20,30,40))
    # Fourth lower right plot.
    plot(data$datetime, data$Global_reactive_power, type="l",
         ylab="Global_reactive_power", xlab="datetime")
    par(opar)  #reset to original parameters.
    dev.off()
}