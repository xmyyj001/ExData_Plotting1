## First check whether it has the file in the current dir.
if (!"read-data.R" %in% list.files()) {
  setwd("/Users/admin/Downloads/DATA Science/exploratory track")
} 
source("read-data.R")
# Set weekdays in English 
Sys.setlocale("LC_TIME", "English")

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px")

plot(DateTime, as.numeric(as.character(Global_active_power)), 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()