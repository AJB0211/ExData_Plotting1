
png(file="plot3.png")

mPlot3 <- function(cexval, labsize = 1,boxtype=1){
  with(eData,plot(dt,Sub_metering_1,type="n",
                  xlab="",ylab="Energy sub metering",cex.lab=labsize))
  with(eData,points(dt,Sub_metering_1,type="l"))
  with(eData,points(dt,Sub_metering_2,type="l",col="red"))
  with(eData,points(dt,Sub_metering_3,type="l",col="blue"))
  legend("topright",col=c("black","red","blue"),
         legend=names(eData[7:9]),
         lty=1,cex=cexval, box.lty=boxtype)
}

mPlot3(1.0)

dev.off()