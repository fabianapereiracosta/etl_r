# banco de dados Iris

# retornando estatísticas do banco de dados


apply(iris[ ,-5], 2, max)
apply(iris[ ,-5], 2, min)
apply(iris[ ,-5], 2, var)
apply(iris[ ,-5], 2, sd)
apply(iris[ ,-5], 2, median)


par(mfrow = c(2, 2)) # configurando área de plotagem


mapply(hist, iris[ , 1:2], MoreArgs=list(main='Histograma', xlab = 'Valores', ylab = 'Frequência')) # pedindo o histograma das colunas 1 e 2 da base de dados



for (i in 1:2) { # criando o loop que vai de 1 a 2
  x <- iris[ , i] # atribui as colunas da base de dados a uma variável temporária
  hist(x,
       main = names(iris)[i], # atribui o nome ao gráfico de forma incremental, passando coluna por coluna
       xlab = "Valores da Variável", # rótulo eixo x
       ylab = 'Frequência', # rótulo eixo y
       xlim = c(min(iris[, i]), max(iris[, i]))) # limites do eixo x
}









