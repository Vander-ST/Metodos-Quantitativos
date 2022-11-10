library(tidyverse)

#Disciplina: Métodos Quantitativos 1

#Alunos: Amanda Raquel da Silva Lopes,
#        Gabriel Itiro Kioki Souza,
#        Vander Soares Teixeira

#A base de dados escolhida foi a Titanic. Essa base de dados é referente ao
#naufrágio e mostra os dados dos passageiros do navio. Como já havíamos explorado
#essa base de dados preferimos utilizá-la para obter talvez outros insights sobre
#esses dados. Os dados a seguir tratam sobre a sobrevivência, classe, Sexo, Idade, 
#quantidade de filhos no navio, quantidade de parentes no navio, o porto de embarque 
#e o preço pago por ticket de cada indivíduo a bordo. 

titanic <- as.data.frame(Titanic)
titanic$Class <- as.integer(titanic$Class)#Transformando string em inteiro
titanic$Sex <- as.integer(titanic$Sex)
titanic$Age <- as.integer(titanic$Age)
titanic$Survived <- as.integer(titanic$Survived)

View(titanic)

agrupamento_titanic<- kmeans(titanic[1:4],centers = 4) 
agrupamento_titanic

agrupamento_titanic_o<-kmeans(titanic[1:4], centers = 10, iter.max = 10, nstart = 1)
agrupamento_titanic_o


agrupamento_titanic_o$centers # são os pontos que se tornaram centroides
agrupamento_titanic_o$size # tamanho de cada grupo (numero de pontos)
agrupamento_titanic_o$cluster # vetor de cluster
agrupamento_titanic_o$membership # são os ítens que fazem parte da análise
agrupamento_titanic_o$iter # o número de iterações(repetições) realizadas.
agrupamento_titanic_o$withinerror # o valor da função objetivo - para especialistas.
agrupamento_titanic_o$call # a função preenchida
agrupamento_titanic_o$totss # A soma total dos quadrados.
agrupamento_titanic_o$tot.withinss # Soma dos quadrados total dentro do cluster, ou seja, soma (dentro).
agrupamento_titanic_o$betweenss # A soma dos quadrados entre clusters, ou seja, totss-tot.dentro
agrupamento_titanic_o$ifault # integer: indicador de um possível problema de algoritmo - para especialistas.

#criar tabela de decisão
table(titanic$Survived,agrupamento_titanic$cluster) 
#criar gráfico de dispersão
plot(titanic[1:4],col = agrupamento_titanic$cluster) 
#consolida tabela
tabela_titanic<- cbind(titanic, agrupamento_titanic$cluster)
View(tabela_titanic)
