# Pacotes disponibilizados no site R Cran
# Tools - Install Packages

# Instalar pacote pelo programa
# Pacote 'dplyr' usado para manipular dados
# funcoes pré-programadas (filter,select,arrange,mutate)

install.packages("dplyr")


# utilizar o pacote


library(dplyr)

# Dados
# criar e preencher variavel com dados ( num ) 


a = 6
b <- 3 * 4

# vetor (c)

vetor1<- c( 5,6,9,10,7)


# Visualizar dados


vetor1

View (vetor1)

# Preenchimento automatico



vetor2 <- 1:5



# preencher variável com caracteres [chr] 


classes <-(letters)
classes

classes1 <-(month.name)
classes1

classes2<-c("Joao","Maria","Pedro","Monica","Paulo")
classes2

# substituir um valor no conjunto

classes2[2]

classes2[2]<-c("Angela")
classes2

# incluir um valor ao conjunto


classes2[6]<-("Maria")
classes2

# Elemento zero não é válido

classes2[0]<-c("Maria")
classes2[0]
classes2[0:6]


# Matrix uma dimensao com preenchimento automatico (array)


vetor3 <- array(1:9)
vetor3


# Matriz (matrix)


M=matrix(1:9,nrow=3,ncol=3)


# visualizar matriz (linha x coluna)

M
M[2,2]
M[1]
M[ ,3]
M[1,]


# Matriz mudar linhas e colunas

M1=matrix(classes1,nrow=12,ncol=1)
M1

M2=matrix(classes1,nrow=3,ncol=4)
M2


# lista preenche com numeros e caracteres (list)

lista <- list("Maria",3,"angelo",7,"Mario",1)
lista


# Tabela de dados com duas colunas (data.frame)



tabela <-data.frame(vetor1,classes1[1:5])

tabela

tabela <-data.frame(vetor1,classes2)
tabela <-data.frame(vetor1,classes2[1:5])
tabela

# visualizacao da tabela de dados - colunas[] linhas $ elementos


tabela[1]
tabela[2]
tabela$vetor1
tabela$classes2


tabela[2,2]

View(tabela)
str(tabela)

# Incluir colunas "vetor2" no aquivo Tabela (data.frame)


tabela["vetor2"]<-data.frame(vetor2)

tabela


# inclui coluna com soma entre colunas



tabela["soma"]<-tabela$vetor1+tabela$vetor2
tabela

# Editar tabela ( cria nova tabela de dados "corrigida")


tabelacorrigida<- edit(data.frame(tabela))
tabelacorrigida


# Apagar coluna

remove(vetor1)
remove(classes1)
remove(M1)


# Gravar banco de dados no formato 'csv'


write.csv(tabela,"meus dados")


# ver o diretorio


getwd()

# Ler tabela em arquivo 'Dados'


Dados<-read.csv("meus dados")
Dados



# montar grafico de pontos de linha x coluna


plot(M,vetor3)

