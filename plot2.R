
png(file = "plot2.png")

mPlot2 <- function(labsize){
  with(eData,plot(dt,Global_active_power, 
                  type="l",
                  xlab="",
                  ylab="Global Active Power (kW)",
                  cex.lab=labsize))
}
mPlot2(1)


dev.off()