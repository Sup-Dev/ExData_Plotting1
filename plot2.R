plot_table <- read.csv("plot_data.csv")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(plot_table$DateTime, plot_table$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()