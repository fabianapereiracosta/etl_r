iris # Íris- base de dados nativa do R
str(iris)

hist(iris$Sepal.Length) # histograma da variável Sepal.Length

sepala_comp <- iris$Sepal.Length # criando objeto com o comprimento da sepala


sepala_comp_central <- sepala_comp - mean(sepala_comp) # centralizando os dados do objeto sepala

par(mfrow = c(1, 2))


# comparação de histogramas

hist(sepala_comp_central) #histograma da variável centralizada
hist(sepala_comp) # histograma da variável original
