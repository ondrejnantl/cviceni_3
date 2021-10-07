VratitMinceMena <- function(M,coinVec){
  coins <- matrix(0, 2, length(coinVec))
  coins[1,] <- coinVec
  coinID <- 1
  while (M > 0 && coinID <= length(coinVec)){
    if ((M/coins[1,coinID]) >= 1){
      coins[2,coinID] <- coins[2,coinID] + 1
      M <- round(M - coins[1,coinID],2)
    } else {
      coinID <- coinID + 1
    }
  }
  return(coins)
}
