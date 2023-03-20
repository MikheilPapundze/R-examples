vectorMean <- function(a){
  S = 0.0
  for (i in a){
    S = S + i
  }
  return(S/length(a))
}

v <- c(1,2,5)
print(vectorMean(v))