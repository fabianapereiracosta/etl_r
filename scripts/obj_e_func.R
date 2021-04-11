#Análise de sobrevivência - Evasão entre os ingressantes 2011 nas Universidades Federais
#Kaplan-Meier

require(survival)

#Base de dados composta apenas pelos estudantes que declararam cor/raça

KM1<-read.csv(file="cor_raca.csv", header=TRUE, sep=";")
attach(KM1)

#A função Surv() define o objeto do tipo tempo de sobrevivência
Surv(TEMPO,EVASAO)
plot(Surv)
str(Surv)

#A função survfit() estima a curva de sobrevivência
ekm<-survfit(Surv(KM$TEMPO, KM$EVASAO)~1)
plot(ekm)
str(ekm)
