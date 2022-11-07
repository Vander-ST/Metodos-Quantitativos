# quem usa linux tem que instalar:
# sudo apt-get install liblapack-dev libblas-dev
# sudo apt-get install default-jre
# sudo apt-get install default-jdk
# sudo R CMD javareconf
#instalar pacotes abaixo:

#PARA OS ALGORITMOS
install.packages("cluster")
install.packages("e1071")
install.packages("fpc")
install.packages("arules")
install.packages("NbClust")

# EXTRAS
install.packages("clustertend")
install.packages("factoextra")

# COMUNS
install.packages("ggplot2")
install.packages("readxl")
install.packages("rJava")

# para instalar de forma automática verificando se tem ou não já instalado

list.of.packages <- c("cluster","e1071","fpc","NbClust","clustertend","factoextra","ggplot2","readxl","rJava")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, dependencies = TRUE)
