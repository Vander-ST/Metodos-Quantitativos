airquality
View(airquality)

airquality <- na.omit(airquality)
agrupamento_airquality<- kmeans(airquality[2:4],centers = 2) 
agrupamento_airquality

agrupamento_airquality_o<-kmeans(airquality[2:4], centers = 10, iter.max = 10, nstart = 1)
agrupamento_airquality_o


agrupamento_airquality_o$centers # são os pontos que se tornaram centroides
agrupamento_airquality_o$size # tamanho de cada grupo (numero de pontos)
agrupamento_airquality_o$cluster # vetor de cluster
agrupamento_airquality_o$membership # são os ítens que fazem parte da análise
agrupamento_airquality_o$iter # o número de iterações(repetições) realizadas.
agrupamento_airquality_o$withinerror # o valor da função objetivo - para especialistas.
agrupamento_airquality_o$call # a função preenchida
agrupamento_airquality_o$totss # A soma total dos quadrados.
agrupamento_airquality_o$tot.withinss # Soma dos quadrados total dentro do cluster, ou seja, soma (dentro).
agrupamento_airquality_o$betweenss # A soma dos quadrados entre clusters, ou seja, totss-tot.dentro
agrupamento_airquality_o$ifault # integer: indicador de um possível problema de algoritmo - para especialistas.

#criar tabela de decisão
table(airquality$Temp,agrupamento_airquality$cluster) 
#criar gráfico de dispersão
plot(airquality[2:4],col = agrupamento_airquality$cluster) 
#consolida tabela
tabela_airquality<- cbind(airquality, agrupamento_airquality$cluster)
View(tabela_airquality)

