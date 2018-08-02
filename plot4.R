png(file="plot4.png")

par(mfcol=c(2,2),mar=c(4,4,2,2))

mPlot2(labsize=1.1)
mPlot3(0.8,1.1,0)
with(eData,plot(dt,Voltage,xlab="datetime",type="l",cex.lab=1.2))
with(eData,plot(dt,Global_reactive_power,xlab="datetime",
                type="l",cex.lab=1.2))


dev.off()