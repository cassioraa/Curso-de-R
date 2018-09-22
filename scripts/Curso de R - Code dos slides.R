# Curso de R - Parte 1
# Code dos slides

# Slide 16
# Operações Fundamendais 
1+1
10-10
3*5
10/5


# Slide 17
# Exercício 1
# Escolhi o número 10
10 + 2
12*3
36-6
30/3

# Slide 21
# Nomeando elementos
a <- 1 + 1
a
b <- 10*10
b
a+b
a-b


# Slide 22
# tarefa simples
# Escolhi o número 8

a <- 8
b <- a + 2
c <- b*3
d <- c-6
e <- d/3
e


# Slide 24
# Sobreescrevendo Objetos
a <-  8
b <-  a+2
a <-  b*3
a

# Slide 24
# limpando o ambiente
rm(list=ls())
# limpando o console
cat("\014")


# slide 25
# Escrevendo funções

f <- function(x){ x^2 + 2*x }
f(3)

z <- function(x,y,z){ x^2 + 2*x*y + sqrt(z)*x}
z(1,2,4)


# Slide 26
# Práticas de notação
w <- (2+5+4)

# Slide 30
# Pacotes Recomendados
# foreign
# lattice
# Matrix
library(foreign)
library(lattice)
library(Matrix)
# O que esse pacote faz?
help("Foreign")


# Slide 31
# Instalando pacote adicional
# Rotina de instalação
install.packages("BETS")
library("BETS")
# Teste
gdp_df <- BETSget(23992, data.frame = T)
head(gdp_df)

# Slide 32      
#.libPaths(c("C:\Users\MyNAME\R", .libPaths()))      