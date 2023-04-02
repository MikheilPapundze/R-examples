dataFunction <- function(file,col){
  rawdata <- read.csv(file)
  data <- rawdata[,col]
  dataMean = mean(na.omit(data))
  dataSd = sd(na.omit(data))
  dataMedian = median(na.omit(data))
  dataRange = range(na.omit(data))
  
  return(c(dataMean,dataSd,dataMedian,dataRange))
}
dataFunction("all_month.csv", "mag")


columnNames <- function(file, pos){
  rawData <- read.csv(file)
  
  return(colnames(rawData)[pos])
}