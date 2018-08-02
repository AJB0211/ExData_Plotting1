suppressMessages(library(lubridate))


srcURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!exists("elecData.zip")){
  download.file(srcURL,destfile = "elecData.zip")
  unzip("elecData.zip",exdir = "./elecData")
}

eData <- read.table("./elecData/household_power_consumption.txt",
                    header=TRUE,
                    na.strings="?",
                    sep=";")

days <- (eData$Date == "1/2/2007" | eData$Date == "2/2/2007")
eData <- eData[days,]
remove(days)
if(file.exists("elecData.zip")) file.remove("elecData.zip")
unlink("./elecData", recursive = TRUE)

eData$Date <- as.character(eData$Date)
eData$Time <- as.character(eData$Time)

eData <- eData %>% 
  mutate(dt =parse_date_time(paste(Date,Time),"%d/%m/%y %H:%M:%S"))

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
