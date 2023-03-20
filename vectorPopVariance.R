vectorPopVariance <- function(a) {
  sum <- 0
  for (i in a){
    sum = sum + i
  }
  popMean <- sum / length(a)
  
  var1 <- 0
  for (i in a){
    var1 <- var1 + (i - popMean)^2
  }
  return(var1 / length(a))
}

v <- c(1,2,3,4,5)
vectorPopVariance(v)