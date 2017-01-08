source("utils.R")

# draw plot #1 on the default device for given dataset
doPlot1 <- function(ds) {
        hist(ds$Global_active_power, 
             main = "Global Active Power",
             xlab = "Global Active Power (killowatts)",
             ylab = "Frequency",
             col = "red")
}

plot1 <- function() {
        ds <- readDataSet("household_power_consumption.txt")
        doPlot1(ds)
        saveToPng("plot1.png")
}