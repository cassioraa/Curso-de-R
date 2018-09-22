# Carregando dados

dados <- read.csv("~/Desktop/Curso de R/dados/dados_curso.csv", header = TRUE, sep = ',', dec = '.') # Mude o seu diretório.


# Visualizando nossos dados

View(dados)
head(dados, n=2)
tail(dados, n=2)

#======================
# Análise de dados
#======================

# Acessando uma variável

preco  <- dados[,2]
peso   <- dados[,4]
comp   <- dados[,5]
origem <- dados[,6]
kmPorL <- dados[,7]


# -- Medidas de posição -- #

# Média

preco_medio <- mean(preco)
peso_medio  <- mean(peso)

# Mediana 

preco_mediana <- median(preco)
peso_mediana  <- median(peso)

# -- Medidas de dispersão -- #

# Variância

preco_var <- var(preco)
peso_var  <- var(peso)

# Desvio-padrão

preco_sd <- sd(preco)
peso_sd  <- sd(peso)

# Coeficiente de variação

CVpreco <- preco_sd/preco_medio

# -- Resumo -- #

resumo <- summary(preco)


#installed.packages('dplyr')
library(dplyr) #pacote pra manipulação e exploração de dados

filter(dados, origem == "Domestic" &  preço <= 4000)

# Abordagem do R
#dados[origem=="Domestic" & preço <=4000,]

cor(peso, comp)
plot(peso, comp)

# Seleciona apenas os dados numéricos

numerico <- select_if(dados, is.numeric)

# Abordagem do R
#nums <- unlist(lapply(dados, is.numeric))  
#dados[,nums]==numerico

# Matriz de correlação 

cor(numerico)
