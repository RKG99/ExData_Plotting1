#Reading, naming and subsetting power consumption data
pw <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(pw) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(pw,pw$Date=="1/2/2007" | pw$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

#exporting plot copy to png file
#dev.print(png, file = "plot1.png", width = 480, height = 480)