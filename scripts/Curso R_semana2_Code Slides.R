# Curso do R
# Segunda Semana
setwd("~/R")
### Gráficos

#importa os dados
library(readr)
dados_curso <- read_csv("C:/Users/Denise Manfredini/Desktop/Curso/Curso-de-R-master/dados/dados_curso.csv")

# abre em uma janela separada
x11()

# Função nativa
plot(dados_curso$preço, dados_curso$`km por litro`)

# Função do ggplot
#install.packages(ggplot2)

library(ggplot2)

p <- ggplot(dados_curso, aes(x=preço, y=`km por litro`))  + geom_point()
plot(p)


# Infinitas possibilidades
#install.packages(c("ggplot2", "plotly", "gapminder"))

library(ggplot2)
library(plotly)
library(gapminder)

p <- gapminder %>%
  filter(year==1977) %>%
  ggplot(aes(gdpPercap, lifeExp, size=pop, color=continent))+
  geom_point()+
  scale_x_log10()+
  theme_bw()


ggplotly(p)



# comandos úteis
#Comando de ajuda
help(plot)

# Desligar o x11()
x11()
dev.off()

# Comando para limpar os gráfico:
plot(Nile)
graphics.off()


##### Elemntos da função plot
# Gráfico padrão
plot(dados_curso$preço, dados_curso$`km por litro`)

# Gráfico com os pontos azuis 
plot(dados_curso$preço, dados_curso$`km por litro`, col="blue")

# Gráfico com o intervalo do x limitado entre 0 e 12000
plot(dados_curso$preço, dados_curso$`km por litro`,
     col="blue", xlim=c(0,12000))



### Mais elementos

# Gráfico com novo nome de x e y
plot(dados_curso$preço, dados_curso$`km por litro`,col="blue", xlab="preço", 
     ylab="Km/l",  col.lab=rgb(0,0.5,0))

# Colocando título
title(main="Preço vs Km/l", col.main="black", font.main=4)

# Colocando legenda
legend(12000, 14, legend=c("Pontos"),
       col=c( "blue"),pch = c(1))


# como salvar

# Comando no sricpt
graphics.off()
png(filename= "C:/Users/Denise Manfredini/Documents/R/figura3.png")
plot(dados_curso$preço, dados_curso$`km por litro`)
dev.off()



# copiando o que aparece na tela:
graphics.off()
plot(dados_curso$preço, dados_curso$`km por litro`)
dev.print(pdf, 'figura2.pdf')


# Histograma padrão
hist(dados_curso$`km por litro`)

# Hitograma modificado
hist(dados_curso$`km por litro`,
     main="Histograma",
     xlab="km por litro",
     col="darkmagenta",
     ylab="Frequência",
     freq=TRUE)

####### Gráfico de Série Temporaç
# Importa dados de macro
dados_macro <- read_csv("C:/Users/Denise Manfredini/Desktop/Curso/Curso-de-R-master/dados/dados_macro.csv")

# Declara dados de série temporal
ts_macro <- ts(dados_macro$`PIB nominal`,
               start = c(1999, 6), frequency = 12)

# Conferindo o número de observações
length(ts_macro)

# Faz gráfico de série temporal
plot.ts(dados_macro$`PIB nominal`)


###### Regressão Linear

# Regressão com uma variável explicativa
regressao_simp <- lm(data = dados_curso, 
                     formula = preço ~ peso)

# Sumário dos ressultados da regressão          
summary(regressao_simp)

# Gráfico do Ajuste
plot(preço ~ peso, data = dados_curso)
abline(regressao_simp)

# Regressão com duas variáveis explicativas
regressao <- lm(data = dados_curso, 
                formula = preço ~ peso +`km por litro`)

# Sumário dos ressultados da regressão          
summary(regressao)

# Resultado dos coeficientes da Regressão
print(regressao)


