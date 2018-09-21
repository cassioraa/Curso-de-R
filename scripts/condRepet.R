#==============
# Exemplos if
#==============

a <- as.numeric(readline("Digite um número:"))
b <- as.numeric(readline("Digite outro número:"))

if (a>b){
  print("O primeiro número é o maior!")
}

if (b>a){
  print("O segundo número é o maior!")
}

#-----------------------------------------------------------------------

salario <- as.numeric(readline("Digite o valor do salário:"))

base <- salario

imposto <- 0

if (base>3000){
  imposto <- imposto + ((base - 3000)*0.35)
  
  base <- 3000
}

if (base>1000){
  imposto <- imposto + ((base - 1000)*0.20)
}

print("O valor de imposto a pagar é de:")
print(imposto)

#-----------------------------------------------------------------------

#===============
# Exemplos else
#===============

a <- as.numeric(readline("Digite um número:"))
b <- as.numeric(readline("Digite outro número"))

if (a > b){
  print("O primeiro número é o maior!")
} else{
  print("O segundo número é o maior!")
}

#---------------------------------------------------------------------

for (i in 1:5){
  print(i)
}
#---------------------------------------------------------------------

Notas <- c(9, 10, 8, 5, 7)
for (i in 1:5){
  print(Notas[i])
}


#---------------------------------------------------------------------

library(BETS)
tx_inf <- BETSget(433, from = "1999-06-30", to = "2018-06-30")

N <- length(tx_inf)

indice<- c(rep(0,N))

for (t in 1:N){
  if (t==1){
    indice[t]=1
  }
  else {indice[t] <- indice[(t-1)]*(1 + tx_inf[t]/100)}
}

indice <- ts(indice, start=c(1999,06), frequency = 12)
indice
