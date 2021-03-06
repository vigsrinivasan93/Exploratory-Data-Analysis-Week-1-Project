dataset<-read.delim(file="C:/Users/vig19/OneDrive/Desktop/R CourseEra/Exploratory Data Analysis/Week 1/household_power_consumption.txt",sep=";",header = TRUE,dec=".")
  subdataset <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date =="2/2/2007")
  subdataset$Date<-as.Date(subdataset$Date,format="%d/%m/%y")
  subdataset$Time<-strptime(subdataset$Time,format="%H:%M:%S")
  subdataset[1:1440,"Time"] <- format(subdataset[1:1440,"Time"],"2007-02-01 %H:%M:%S")
  subdataset[1441:2880,"Time"] <- format(subdataset[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
  png(filename = "C:/Users/vig19/OneDrive/Desktop/R CourseEra/Exploratory Data Analysis/Week 1/Power/Plot 4 - Combined Charts.png",width = 800, height = 600)
    par(mfrow=c(2,2))
    plot(subdataset$Time,as.numeric(subdataset$Global_active_power),type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
    plot(subdataset$Time,as.numeric(subdataset$Voltage),type = "l",xlab="datetime",ylab = "Voltage")
    plot(subdataset$Time,subdataset$Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
      lines(subdataset$Time,subdataset$Sub_metering_2,type="l",col="red")
      lines(subdataset$Time,subdataset$Sub_metering_3,type="l",col="blue")
    plot(subdataset$Time,subdataset$Global_reactive_power,type="l",col="black",ylab="Global_Reactive_Power",xlab="datetime")
    dev.off()