csv_file <- "plot_data.csv"
file_name <- "household_power_consumption.txt"
table_read <- read.table(file_name, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
table_read <- table_read[(table_read$Date == "1/2/2007") | (table_read$Date == "2/2/2007"),]
table_read$DateTime <- strptime(paste(table_read$Date, table_read$Time), "%d/%m/%Y %H:%M:%S")
write.csv(table_read, csv_file)
