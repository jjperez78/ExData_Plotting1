## First we read the data

library(read.table)

Data<-read.table("household_power_consumption.txt",sep=";",na.string="?",head=TRUE,
                 colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

# We capture the names on fields

fields<-names(Data)

# Add a new column with the format DataTime

Data$datetime <- as.POSIXct(paste(Data$Date, Data$Time), format="%d/%m/%Y %H:%M:%S")

# We select the data on 2007-02-01 and 2007-02-02

Data2 <- subset(Data, datetime > as.POSIXct("2007-02-01 00:00:00") & datetime < as.POSIXct("2007-02-03 00:00:00"))

## Plotting

#Fist we open the media

png("plot3.png",width=480,height=480,units="px")

# First we create the canvas

plot(Data2[,10],Data2[,7],type="n",xlab="",ylab="Energy sub metering")

# Add the point from the first variable 
# Data2[,10] is the datetime variable as result of combine Date and Time from the orignal data table
# Data2[,7] is the Sube_metering_1

points(Data2[,10],Data2[,7],type="l")

# Add the point from the second variable 
# Data2[,8] is the Sube_metering_2

points(Data2[,10],Data2[,8],type="l",col="red")

# Add the point from the third variable 
# Data2[,9] is the Sube_metering_3

points(Data2[,10],Data2[,9],type="l",col="blue")

# Now we add the legend.
# We should use vector to define the name of the variables and colours.

legend("topright",legend=c("Sub_metering_1","Sub_metering_3","Sub_metering_3"),col=c("black","red","blue"),lty=1)

# At last we close the device.

dev.off()