source("utils.R")

# draw plot #4.1 on the default device for given dataset
doPlot4.1 <- function(ds) {
        plot(x = ds$DateTime, 
             y = ds$Global_active_power, 
             type = "l",
             xlab = NA,
             ylab = "Global Active Power")
}

# draw plot #4.2 on the default device for given dataset
doPlot4.2 <- function(ds) {
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
               col=c("black", "blue","red"),
               bty = "n",
               pt.cex = 1,
               cex = 0.7)
}

# draw plot #4.3 on the default device for given dataset
doPlot4.3 <- function(ds) {
        plot(x = ds$DateTime, 
             y = ds$Voltage, 
             type = "l",
             xlab = "datetime",
             ylab = "Voltage")
}

# draw plot #4.4 on the default device for given dataset
doPlot4.4 <- function(ds) {
        plot(x = ds$DateTime, 
             y = ds$Global_reactive_power, 
             type = "l",
             xlab = "datetime",
             ylab = "Global_reactive_power")
}

plot4 <- function() {
        ds <- readDataSet("household_power_consumption.txt")
        
        # save parameters before we change them
        oldpar <- par(no.readonly = TRUE)
        par(mfcol = c(2, 2), mar = c(4, 4, 0.5, 1), oma = c(0, 0, 0, 0))
        
        doPlot4.1(ds)
        doPlot4.2(ds)
        doPlot4.3(ds)
        doPlot4.4(ds)
        
        # restore old parameter values 
        par(oldpar)
        
        saveToPng("plot4.png")
}