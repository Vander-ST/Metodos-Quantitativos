mtcars
View(mtcars)


agrupamento_mtcars<- kmeans(mtcars[1:2],centers = 2) 
agrupamento_mtcars

agrupamento_mtcars_o<-kmeans(mtcars[1:7], centers = 10, iter.max = 10, nstart = 1)
agrupamento_mtcars_o


agrupamento_mtcars_o$centers # são os pontos que se tornaram centroides
agrupamento_mtcars_o$size # tamanho de cada grupo (numero de pontos)
agrupamento_mtcars_o$cluster # vetor de cluster
agrupamento_mtcars_o$membership # são os ítens que fazem parte da análise
agrupamento_mtcars_o$iter # o número de iterações(repetições) realizadas.
agrupamento_mtcars_o$withinerror # o valor da função objetivo - para especialistas.
agrupamento_mtcars_o$call # a função preenchida
agrupamento_mtcars_o$totss # A soma total dos quadrados.
agrupamento_mtcars_o$tot.withinss # Soma dos quadrados total dentro do cluster, ou seja, soma (dentro).
agrupamento_mtcars_o$betweenss # A soma dos quadrados entre clusters, ou seja, totss-tot.dentro
agrupamento_mtcars_o$ifault # integer: indicador de um possível problema de algoritmo - para especialistas.

#criar tabela de decisão
table(mtcars$mpg,agrupamento_mtcars$cluster) 
#criar gráfico de dispersão
plot(mtcars[1:2],col = agrupamento_mtcars$cluster) 
#consolida tabela
tabela_mtcars<- cbind(mtcars, agrupamento_mtcars$cluster)
tabela_mtcars
