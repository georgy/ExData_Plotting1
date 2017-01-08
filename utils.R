# You will need to install data.table package to run this code
library(data.table)

readDataSet <- function(filename) {
        ds <- fread(input = filename, 
                    sep = ";", na.strings = c("?", ""))
        
        # subset only dates we care about
        ds <- ds[with(ds, Date == "1/2/2007" | Date == "2/2/2007"),]
        
        # add date and time column in POSIXct format to the dataset
        ds[, DateTime := paste(ds$Date, ds$Time, sep = " ")]
        ds[, DateTime := as.POSIXct(DateTime, format = "%d/%m/%Y %H:%M:%S")]
        
        ds
}

saveToPng <- function(name) {
        dev.copy(png, filename = name, width = 480, height = 480)
        dev.off()
}