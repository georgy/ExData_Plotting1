source("utils.R")

# draw plot #2 on the default device for given dataset
doPlot2 <- function(ds) {
        plot(x = ds$DateTime, 
             y = ds$Global_active_power, 
             type = "l",
             xlab = NA,
             ylab = "Global Active Power (killowatts)")
}

plot2 <- function() {
        ds <- readDataSet("household_power_consumption.txt")
        doPlot2(ds)
        saveToPng("plot2.png")
}