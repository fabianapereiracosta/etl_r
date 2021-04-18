# realizando bootstrapping

# bootstraping com função replicate

set.seed(412)

dist_normal <- rnorm(1000) # distribuição normal com 1000 casos

boots_dist_normal <- replicate(10, sample(dist_normal, 10, replace = TRUE)) # replica 10x a amostra, criando assim um bootstrapping

boots_dist_normal


# calculando a variância com bootstrapping (10, 50, 100, 500, 1000, 5000 e 100000 r?plicas)
var_boots_dist_normal10 <-replicate(10, var(sample(dist_normal, 10, replace = TRUE))) 

var_boots_dist_normal50 <-replicate(50, var(sample(dist_normal, 10, replace = TRUE))) 

var_boots_dist_normal100 <-replicate(100, var(sample(dist_normal, 10, replace = TRUE)))

var_boots_dist_normal500 <-replicate(500, var(sample(dist_normal, 10, replace = TRUE)))

var_boots_dist_normal1000 <-replicate(1000, var(sample(dist_normal, 10, replace = TRUE)))

var_boots_dist_normal5000 <-replicate(5000, var(sample(dist_normal, 10, replace = TRUE)))

var_boots_dist_normal10000 <-replicate(10000, var(sample(dist_normal, 10, replace = TRUE)))

# a lei dos grandes n?meros diz que a m?dia amostral converge para a m?dia populacional ? medida que o N aumenta. Assim, abaixo utilizei a m?dia da vari?ncia das r?plicas anteriores para obter uma melhor estimativa da vari?ncia da distribui??o original. O teorema do limite central diz que ? medida que o N aumenta, a distribui??o amostral converge para a distribui??o normal com m?dia mi e vari?ncia sigma 2.

mean(var_boots_dist_normal10)
mean(var_boots_dist_normal50)
mean(var_boots_dist_normal100)
mean(var_boots_dist_normal500)
mean(var_boots_dist_normal1000)
mean(var_boots_dist_normal5000)
mean(var_boots_dist_normal10000)
var(dist_normal)

