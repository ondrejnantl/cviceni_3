FibIter <- function(n){
  Past <- 0
  Curr <- 1
  if (n == 1 | n == 2){
    return(1)
  } else {
    for (i in 1:(n-1)) {
      Fib <-  Past + Curr
      Past <- Curr
      Curr <- Fib
    }
  }
  return(Curr)
}

FibRec <- function(n){
  if(n == 1 | n == 2){
    return(1)
  } else {
    return(FibRec(n-1)+FibRec(n-2))
  }
}