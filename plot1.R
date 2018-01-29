## First check whether it has the file in the current dir.
if (!"read-data.R" %in% list.files()) {
  setwd("/Users/admin/Downloads/DATA Science/exploratory track")
} 
source("read-data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()