
### find the mean

pollutant_mean <- function(directory, pollutant, id = 1:332){
  files_list <- list.files(directory, full.names = TRUE) # creates a list of files
  dat <- data.frame()
  for (i in id) {
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  pollu <- dat[, pollutant]
  pollu_mean <- mean(pollu, na.rm = TRUE)
  print(pollu_mean)
}
