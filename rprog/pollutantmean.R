pollutantmean <- function(directory="specdata", pollutant="", id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  filenames <- list.files(directory, full.names=TRUE)
  data <- data.frame(Date=as.Date(character()),
                              sulfate=as.numeric(),
                              nitrate=as.numeric(),
                              ID=as.integer())
  for(filename in filenames) {
    d <- read.csv(filename)
    data <- rbind(data, d)
  }
}