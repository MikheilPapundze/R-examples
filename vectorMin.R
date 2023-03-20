vectorMin <- function(a){
  min = a[1]
  for (i in a){
    if (i < min){
      min = i
    }
  }
  return(min)
}

v <- c(1,-2,5)
print(vectorMin(v))