dataset<-read.delim(file="C:/Users/vig19/OneDrive/Desktop/R CourseEra/Exploratory Data Analysis/Week 1/household_power_consumption.txt",sep=";",header = TRUE,dec=".")
  subdataset <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date =="2/2/2007")
  png(filename = "C:/Users/vig19/OneDrive/Desktop/R CourseEra/Exploratory Data Analysis/Week 1/Power/Plot 1 - Global Active Power.png",width = 600, height = 480)
    hist(as.numeric(subdataset$Global_active_power),col="red",main="Global Active Power",ylab="Frequency",xlab="Global Active Power(kilowatts)")
    dev.off()  
     
      