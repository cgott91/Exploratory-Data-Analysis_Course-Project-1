plot1<-function()
{
  #Data is read
  data2<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,stringsAsFactors = FALSE,na.strings = "?")
  #Date is formatted
  data2$Date<-as.Date(data2$Date,format = "%d/%m/%Y")
  #required rows are filtered 
  data1<-filter(data2,Date=="2007-02-02"|Date=="2007-02-01")
  #plotted
  hist(data1$Global_active_power,xlab = "Global Active Power(kilowatts)",col = "red",main = "Global Active Power")
  dev.copy(png, file = "plot1.png", height = 480, width = 480)
  dev.off()
}