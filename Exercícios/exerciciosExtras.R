#=============
# EXERCÍCIOS
#=============

# 1. Usando a base de dados 'dados_curso.csv' execute as seguintes tarefas:

# a) Carregue a base de dados e altere o parâmetro "header" para FALSE Visualize os dados usando o comando View()
# e veja como os dados se alteraram. Em seguida, troque o parâmetro "header" para TRUE para proseguir nos demais exercícios.

dados <- read.csv(file="~/Desktop/Curso de R/dados/dados_curso.csv", header = FALSE, sep = ",", dec=".")
View(dados)

dados <- read.csv(file="~/Desktop/Curso de R/dados/dados_curso.csv", header = TRUE, sep = ",", dec=".")
View(dados)

# b) Calcule a média e o desvio padrão do preço dos carros. Selecione os modelos com preço acima de um desvio-padrão acima da média.

p <- dados[,2]

media <- mean(p)
dp    <- sd(p)

sel <- dados[p>(media+dp),]
sel

#-----------------------------------------------------------------------------------------------------------------------
# 2. Escreva um programa que imprima na tela o nome de cada modelo de carro

modelo <- dados[,1]

N <- length(modelo)

for (i in 1:N){
  print(as.character(modelo[i]))
}


# 3. Usando a base de dados "brasil.csv" execute as seguintes tarefas


# a) Carregue a base de dados

br <- read.csv(file="~/Desktop/Curso de R/dados/brasil.csv", header = TRUE, sep = ",", dec=".")

# b) Escreva um código que imprima o nome da região e o total da população dessa região

nomes <- c("Norte", "Nordeste", "Sudeste", "Sul", "Centro-Oeste")
total <- rep(0,5) # repete o 0 cinco vezes.
for (i in 1:5){
  print(names[i])
  print(sum(br[br$regiao==nomes[i],7]))
}


# 4. Escreva um código que imprima as letras 8 primeiras letras do alfabeto, mas que não imprima a letra e.

letras <- c("a", "b","c","d","e","f","g","h")

for (i in 1:8){
  if (letras[i]!="e"){
    print(letras[i])
  }
}
