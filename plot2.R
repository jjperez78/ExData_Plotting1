#Fist we open the media

png("plot2.png",width=480,height=480,units="px")

# Plot the scatter plot. 
# Data2[,10] is the datetime variable as result of combine Date and Time from the orignal data table
# Data2[,3] is the Global_active_power, thrid column on the original data table

plot(Data2[,10],Data2[,3],type="l",ylab="Global Active Power (kilowatts)",xlab="")

# At last we close the device.

dev.off()