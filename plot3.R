source("utils.R")

# draw plot #3 on the default device for given dataset
doPlot3 <- function(ds) {
        plot(x = ds$DateTime, 
             y = ds$Sub_metering_1, 
             type = "l",
             xlab = NA,
             ylab = "Energy sub metering")
        lines(x = ds$DateTime, y = ds$Sub_metering_2, type = "l", col = "red")
        lines(x = ds$DateTime, y = ds$Sub_metering_3, type = "l", col = "blue")
        legend("topright", 
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               lty = c(1, 1, 1), 
               col=c("black", "blue","red"))
}

plot3 <- function() {
        ds <- readDataSet("household_power_consumption.txt")
        doPlot3(ds)
        saveToPng("plot3.png")
}