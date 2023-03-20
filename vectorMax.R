vectorMax <- function(a){
  max = a[1]
  for (i in a){
    if (i > max){
      max = i
    }
  }
  return(max)
}

v <- c(1,7,5)
print(vectorMax(v))
