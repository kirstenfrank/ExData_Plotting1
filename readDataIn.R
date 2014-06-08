readDataIn<-function() {
    temp<-read.table("/Users/kirsten/Git-local/household_power_consumption.txt",sep=";", header=TRUE,stringsAsFactor=FALSE)
    data<-subset(temp, temp$Date=="1/2/2007" | temp$Date=="2/2/2007")
    ## These are French (European) style dates with the day of month first and the month second.
    library("lubridate")
    ## lubridate is a package that makes dates and times easy to handle.
    rm(temp)
    ## Clear out memory by deleting the large file.
    data$datetime<-paste(data$Date,data$Time)
    ## Date and Time are characters, so paste works.
    ## Everything is a character, so the numbers need to be converted.
    data$Global_active_power<-as.numeric(data$Global_active_power)
    data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
    data$Voltage<-as.numeric(data$Voltage)
    data$Global_intensity<-as.numeric(data$Global_intensity)
    data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
    data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
    data$Sub_metering_3<-as.numeric(data$Sub_metering_3)
    ## parse_date_time is a function from the lubridate package. The order of the 
    ## date and time elements needs to be the second parameter in the function call.
    data$datetime<-parse_date_time(data$datetime,"dmy_hms")
    return(data)
}