makeplot3<-function(data=newdata) {
    png(file="plot3.png", bg="transparent", width=7, height=7, units="in", res=72)
    ## Open the PNG device directly.
    plot(data$datetime, data$Sub_metering_1, type="l",
         xlab="",
         ## Remove a label on the X axis
         ylab="Energy sub metering", yaxt="n", ylim=c(0,38))
    plot(data$datetime, data$Sub_metering_2, xlab="", ylab="", type = "l", col="red", yaxt="n", ylim=c(0,38)) 
    plot(data$datetime, data$Sub_metering_3, xlab="", ylab="", type = "l", col="blue", yaxt="n", ylim=c(0,38)) 
    legend("topright", 
           legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
            col=c("black","red","blue"), lty=1)
    axis(2, at=c(0,10,20,30,40))
    dev.off()
}