# Criando duas variáveis normais de desvio padrão diferente

normal_1 <- rnorm(500, sd = 2)
normal_2 <- rnorm (500, sd = 1)


# Criando uma variável de contagem (poisson)

poisson_1 <- rpois(500, 5)
hist(poisson_1)


# Criando uma variável de contagem com dispersão (binomial negativa)

binomial_negativa <- rnbinom(500,1,0.5) # por que 1? Pode ser 20?
hist(binomial_negativa)


# Criando uma variável binomial (0,1)

binomial <- rbinom(500,1,0.5)


# Criando uma variável qualitativa que apresenta um valor quando a variável binomial é 0 e outro quando é 1

qualitativa <- ifelse(binomial == '1', "evadido", "matriculado")


# Criando uma variável de index

index <- seq(1:500)


# Criando um data frame com as variáveis anteriores

df <- data.frame(normal_1, normal_2, poisson_1, binomial_negativa, binomial, qualitativa, index)
str(df)


# Centralizando as variáveis normais. Criei primeiro um novo data frame para fazer as modificações

df1 <- df

df1$normal_1 <- df1$normal_1 - mean(df1$normal_1)
df1$normal_2 <- df1$normal_2 - mean(df1$normal_2)


#Trocando os zeros (0) por um (1) nas variáveis de contagem.

df1$poisson_1 [df1$poisson_1 == 0] <- 1 
df1$binomial_negativa [df1$binomial_negativa == 0] <- 1
str(df1)


# Crie um novo data.frame com amostra (100 casos) da base de dados original (df)

novo_df <- df[sample(1:500, 100, replace = F), ]
str(novo_df)








