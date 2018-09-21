# Carregando os dados

#dados <- read.csv('~/Desktop/Curso de R/dados/dados_macro.csv', header=TRUE, sep=',', dec = ',')
#tx_inf <- ts(dados[,2], start=c(1999,06), frequency = 12)
#y      <- ts(dados[,3], start=c(1999,06), frequency = 12)

library(BETS)

tx_inf <- BETSget(433, from = "1999-06-30", to = "2018-07-30")
y      <- BETSget(4380, from = "1999-06-30", to = "2018-07-30")

# Construindo número índice para a taxa do IPCA

N <- length(tx_inf)

indice <- c(rep(0,N))

for (t in 1:N){
  if (t==1){
    indice[t] <- 1.00
  }
  else {
    indice[t] <- indice[(t-1)]*(1 + tx_inf[t]/100)
    }
}

# Mudança de base

indiceNB <- tail(indice,n=1)/indice

indiceNB <- ts(indiceNB, start=c(1999,06), frequency = 12)

y_real <- indiceNB * y


library(zoo)

plot.zoo(cbind(y,y_real),
         plot.type = "single", 
         col = c("black", "gray"))
