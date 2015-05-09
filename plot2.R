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

png("plot2.png",width=480,height=480,units="px")

# Plot the scatter plot. 
# Data2[,10] is the datetime variable as result of combine Date and Time from the orignal data table
# Data2[,3] is the Global_active_power, thrid column on the original data table

plot(Data2[,10],Data2[,3],type="l",ylab="Global Active Power (kilowatts)",xlab="")

# At last we close the device.

dev.off()