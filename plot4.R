#Fist we open the media

png("plot4.png",width=480,height=480,units="px")

# Fist we create the matrix o plots

par(mfrow = c(2,2))

# Now we add the plot con (1,1)

plot(Data2[,10],Data2[,3],type="l",ylab="Global Active Power",xlab="")

# Next we add the plot on (1,2)

plot(Data2[,10],Data2[,5],type="l",ylab="Voltage",xlab="datetime")

# Next the plot on (2,1)

plot(Data2[,10],Data2[,7],type="n",xlab="",ylab="Energy sub metering")
points(Data2[,10],Data2[,7],type="l")
points(Data2[,10],Data2[,8],type="l",col="red")
points(Data2[,10],Data2[,9],type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_3","Sub_metering_3"),col=c("black","red","blue"),lty=1, bty="n")

# And the plot at (2,2)

plot(Data2[,10],Data2[,4],type="l",ylab="Global_reactive_power",xlab="datetime")

# At last we close the device.

dev.off()