HanojskaVez <- function(n,zKoliku,naKolik){
  if (n == 1){
    print(paste(c('Presun disk z ',as.character(zKoliku),' na ', as.character(naKolik)),collapse = ""))
    return()
  } else {
    volnyKolik <- 6 - zKoliku - naKolik
    HanojskaVez(n - 1,zKoliku,volnyKolik)
    print(paste(c('Presun disk z ',as.character(zKoliku),' na ', as.character(naKolik)),collapse = ""))
    HanojskaVez(n - 1,volnyKolik,naKolik)
  }
}