#Fist we open the media

png("plot1.png",width=480,height=480,units="px")

# Plot the histogram
# You can also use Data2[,3] as it is the Global_active_power, thrid column on the original data table

hist(Data2[,"Global_active_power"],main="Global Active Power",xlab="Global Active Power (kilowatts)", col="Red")

# At last we close the device.

dev.off()