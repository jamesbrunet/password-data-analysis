newln = function(){
  cat("\n")
}

process = function() {
  newln()
  newln()
  newln()
  #make sure workspace is set right to load file
  allData = read.csv("Formatted_Password_Log_Data.csv")
  
  az6 = allData
  az6 <- subset(az6,Scheme=="textrandom;az-6")
  
  blankP = allData
  blankP <- subset(blankP,Scheme=="testpasstiles;BlankP")
  
  imageP = allData
  imageP <- subset(imageP,Scheme=="testpasstiles;ImageP")
  
  readline("Press 'Enter' for desciptive statistics of 'textrandom;az-6' logins")
  
  az6Attempts = data.frame(
    row.names=c("Total Logins","Successful Logins", "Unsuccessful Logins", "Time for Successes", "Time for Fails"),
    mean = c(mean(az6$Login.Attempts), mean(az6$Success.Count), mean(az6$Fail.Count), mean(az6$Median.Success.Time), mean(na.omit(az6$Median.Failure.Time))), 
    median = c(median(az6$Login.Attempts), median(az6$Success.Count), median(az6$Fail.Count), median(az6$Median.Success.Time), median(na.omit(az6$Median.Failure.Time))),
    s.d. = c(sd(az6$Login.Attempts), sd(az6$Success.Count), sd(az6$Fail.Count), sd(az6$Median.Success.Time), sd(na.omit(az6$Median.Failure.Time)))
  )
  View(az6Attempts)
  
  
  readline("Press 'Enter' for desciptive statistics of 'testpasstiles;BlankP' logins")
  
  blankPAttempts = data.frame(
    row.names=c("Total Logins","Successful Logins", "Unsuccessful Logins", "Time for Successes", "Time for Fails"),
    mean = c(mean(blankP$Login.Attempts), mean(blankP$Success.Count), mean(blankP$Fail.Count), mean(blankP$Median.Success.Time), mean(na.omit(blankP$Median.Failure.Time))), 
    median = c(median(blankP$Login.Attempts), median(blankP$Success.Count), median(blankP$Fail.Count), median(blankP$Median.Success.Time), median(na.omit(blankP$Median.Failure.Time))),
    s.d. = c(sd(blankP$Login.Attempts), sd(blankP$Success.Count), sd(blankP$Fail.Count), sd(blankP$Median.Success.Time), sd(na.omit(blankP$Median.Failure.Time)))
  )
  View(blankPAttempts)
  
  
  readline("Press 'Enter' for desciptive statistics of 'testpasstiles;ImageP' logins")
  
  imagePAttempts = data.frame(
    row.names=c("Total Logins","Successful Logins", "Unsuccessful Logins", "Time for Successes", "Time for Fails"),
    mean = c(mean(imageP$Login.Attempts), mean(imageP$Success.Count), mean(imageP$Fail.Count), mean(imageP$Median.Success.Time), mean(na.omit(imageP$Median.Failure.Time))), 
    median = c(median(imageP$Login.Attempts), median(imageP$Success.Count), median(imageP$Fail.Count), median(imageP$Median.Success.Time), median(na.omit(imageP$Median.Failure.Time))),
    s.d. = c(sd(imageP$Login.Attempts), sd(imageP$Success.Count), sd(imageP$Fail.Count), sd(imageP$Median.Success.Time), sd(na.omit(imageP$Median.Failure.Time)))
  )
  View(imagePAttempts)
  
  readline("Press 'Enter' for histogram of total login attempts 'textrandom;az-6'")
  hist(az6$Login.Attempts)
  readline("Press 'Enter' for histogram of total login attempts 'testpasstiles;BlankP'")
  hist(blankP$Login.Attempts)
  readline("Press 'Enter' for histogram of total login attempts 'testpasstiles;ImageP'")
  hist(imageP$Login.Attempts)
  
  readline("Press 'Enter' for histogram of successful logins 'textrandom;az-6'")
  hist(az6$Success.Count)
  readline("Press 'Enter' for histogram of successful logins 'testpasstiles;BlankP'")
  hist(blankP$Success.Count)
  readline("Press 'Enter' for histogram of successful logins 'testpasstiles;ImageP'")
  hist(imageP$Success.Count)
  
  readline("Press 'Enter' for histogram of failed logins 'textrandom;az-6'")
  hist(az6$Fail.Count)
  readline("Press 'Enter' for histogram of failed logins 'testpasstiles;BlankP'")
  hist(blankP$Fail.Count)
  readline("Press 'Enter' for histogram of failed logins 'testpasstiles;ImageP'")
  hist(imageP$Fail.Count)
  
  readline("Press 'Enter' for histogram of successful login time 'textrandom;az-6'")
  hist(az6$Median.Success.Time)
  readline("Press 'Enter' for histogram of successful login time 'testpasstiles;BlankP'")
  hist(blankP$Median.Success.Time)
  readline("Press 'Enter' for histogram of successful login time 'testpasstiles;ImageP'")
  hist(imageP$Median.Success.Time)
  
  readline("Press 'Enter' for boxplot of successful login time 'textrandom;az-6'")
  boxplot(az6$Median.Success.Time)
  readline("Press 'Enter' for boxplot of successful login time 'testpasstiles;BlankP'")
  boxplot(blankP$Median.Success.Time)
  readline("Press 'Enter' for boxplot of successful login time 'testpasstiles;ImageP'")
  boxplot(imageP$Median.Success.Time)
  
  readline("Press 'Enter' for histogram of failed login time 'textrandom;az-6'")
  hist(na.omit(az6$Median.Failure.Time))
  readline("Press 'Enter' for histogram of failed login time 'testpasstiles;BlankP'")
  hist(na.omit(blankP$Median.Failure.Time))
  readline("Press 'Enter' for histogram of failed login time 'testpasstiles;ImageP'")
  hist(na.omit(imageP$Median.Failure.Time))
  
  readline("Press 'Enter' for boxplot of failed login time 'textrandom;az-6'")
  boxplot(na.omit(az6$Median.Failure.Time))
  readline("Press 'Enter' for boxplot of failed login time 'testpasstiles;BlankP'")
  boxplot(na.omit(blankP$Median.Failure.Time))
  readline("Press 'Enter' for boxplot of failed login time 'testpasstiles;ImageP'")
  boxplot(na.omit(imageP$Median.Failure.Time))
}

process()
