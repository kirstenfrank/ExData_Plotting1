makeplot2<-function(data=newdata) {
    png(file="myplot2.png", bg="transparent", width=7, height=7, units="in", res=72)
    ## Open the PNG device directly.
    plot(data$datetime, data$Global_active_power, type="l",
         xlab="",
         ## Remove a label on the X axis
         ylab="Global Active Power (kilowatts)",yaxt="n")
    axis(2, at=c(0,2,4,6,8))
    dev.off()
}