makeHistogram<-function(data=newdata) {
    ## Use the PNG device directly.
    png(file="myHist.png", bg="transparent", width=7, height=7, units="in", res=72)
    hist(data$Global_active_power, 
         col = "red", main="Global Active Power",
         ylab="Frequency", xlab="Global Active Power (kilowatts)",xaxt="n")
    
    ## This corrects the x axis to have marks at the same places as in the model.
    axis(1, at=c(0,2,4,6), )
    dev.off()
}