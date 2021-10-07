VratitMince <- function(M){
  coins <- matrix(0, 2, 6)
  coins[1,] <- c(50, 20, 10, 5, 2, 1)
  coinID <- 1
  while (M > 0 && coinID < 7){
    if ((M/coins[1,coinID]) >= 1){
      coins[2,coinID] <- coins[2,coinID] + 1
      M <- M - coins[1,coinID]
    } else {
      coinID <- coinID + 1
    }
  }
  return(coins)
}
