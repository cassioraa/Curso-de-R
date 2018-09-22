#===============
# Exemplos
#===============

a <- 1 # a recebe 1
b <- 2 # b recebe 2
a == b # a é igual a b?
# FALSE
a > b  # a é maior que b?
# FALSE
a < b # a é menor que b?
# TRUE
class(a) == "numeric" # a é numérico?
# TRUE 


#===============
# Exemplo: e
#===============

faltas <- 76 # porcentagem das faltas
media  <- 7  # média da p1 e p2
#condições para ser aprovado
aprovado <- faltas >= 75 & media >=6 
aprovado

#===============
# Exemplo: ou
#===============

# idade
idade <- 17

# está acompanhado de uma pessoa maior de 18 anos
acompanhado <- "sim" 

# Entra na festa? Verdadeiro ou falso?
entra_na_festa <- idade > 18 | acompanhado == "sim" 
entra_na_festa
