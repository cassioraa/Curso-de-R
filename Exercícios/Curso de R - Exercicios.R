# Curso de R - Primeira Parte
# Exercício Adicionais

# Todos exercícios devem ser escritos em um script salvo em uma pasta pessoal.


# 1. Calcule a raiz quadrada de 144
sqrt(144)

# 2. Escreva uma função "funcao" da soma de (x, x^2, x^3)
# e calcule a função com x=1 e x=2
funcao <- function(x){ x+ x^2 + x^3}
funcao(1)
funcao(2)

# 3. Escreva a função "funcao2" da multiplicação de z po w menos w
# e calcule no ponto z=4 e w =2
funcao2 <- function(w, z){ w*z - w}
funcao2(2, 4)

# 4. Calcule a função anterior para w =2 e para z=1, z=2 e z=3 (Gera três resultados)
funcao2(1:3, 4)
 
# 5. Qual a descrição da função "rnorm"?
help("rnorm")

# Usando a descição acima gere uma normal com ...
# 10 observações (n=10), média = 0 e desvio-padrão = 1 

n <-  10
rnorm(n, mean = 0, sd = 1)

