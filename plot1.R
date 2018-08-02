
png(file = "plot1.png")

hist(eData$Global_active_power,
     col="red",
     xlab = "Global Active Power (kW)",
     main = "Global Active Power")

dev.off()