## First check whether it has the file in the current dir.
if (!"read-data.R" %in% list.files()) {
  setwd("/Users/admin/Downloads/DATA Science/exploratory track")
} 
source("read-data.R")
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()