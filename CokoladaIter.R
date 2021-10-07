CokoladaIter <- function(M,r,s){
  result <- M[r,s]
  while (r<nrow(M)){
    if (M[r+1,s] >= M[r+1,s+1]){
      result <- result + M[r+1,s]
      r <- r+1
    } else {
      result <- result + M[r+1,s+1]
      r <- r+1
      s <- s+1
    }
  }
  return(result)
}