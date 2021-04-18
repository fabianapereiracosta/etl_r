# simulações e repetições

# geração aleatória de dados


# a função addTaskCallback deixa a set.seed fixa, rodando no back
tarefasemente <- addTaskCallback(function(...) {set.seed(123);TRUE}) # atribui a tarefa à variável tarefaSemente
tarefasemente # chama a tarefa semente


# distribuição normal
dist_normal <- rnorm(1000) # distribuição normal com 1000 casos
summary(dist_normal) #sumário da distribuição normal


# distribuição binomial
dist_binomial <- rbinom(1000,1,0.43) #rbinom para criar uma distribuição binomial indicando casos (1000 alunos), tamanho e probabilidade de evasão (43%)

# apresenta a quantidade de casos
(matriculado <- sum(dist_binomial == 0))
(evadido <- sum(dist_binomial == 1))


# sequências
index <- seq(1, length(dist_normal)) # vetor com índex dos dados, usando a função length para pegar o total de casos

removeTaskCallback(tarefasemente) # remove a tarefa "addtaskcallback"












