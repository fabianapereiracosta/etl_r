install.packages('eeptools')
library('eeptools')


# vetor com as siglas das regiões brasileiras

regiao <- c("NO", "NE", "S", "SE", "CO")

# vetor com a população de cada região
populacao <- c(17710000, 56560081, 29016114, 87711946, 16090000)

# idh de cada uma das regiões
idh <- c(0.730, 0.710,0.798, 0.794, 0.789)


# data frame com sigla, população e idha de cada região brasileira
regioes <- data.frame(regiao, populacao, idh)
regioes
