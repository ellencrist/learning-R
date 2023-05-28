# Comandos basicos para operar com arquivos de dados

# verifica diretorio atual (getwd())   



getwd()


# mudar diretorio - OBS: algumas pastas do windons nao aparacem
# pode-se copiar diretorio do programa explorer do windons
# deve-se inverte as barras: (\,/) [ C:\Users\Danilo\Documents ]



setwd("C:/Users/sofia/Documentos/Danilo/Data scienc")
setwd("C:/Users/sofia/Documents/Danilo/Data scienc/Programação Estatística/Aula1")


# Obter dados externos - arquivo (CSV)
# se tiver cabecario (header)
# separador entre dados (sep)
# separador decimal entre os numeros, virgua ou ponto (dec)
# montar uma matriz com dados externos chamado 'renda'

renda<-read.csv("trabalho2.csv",header=TRUE, sep=";", dec=".")



# visualizar os dados do arquivo

renda
View(renda)
str(renda)

# editar os dados
# Para voltar ao programa 'R', deve-se fechar o 'EDIT'


edit(renda)


# verificar os dados da variavel 'categoria' que
# contenha a palavra 'Sexo' [TRUE | FALSE] / condicional


renda$Categoria==("Sexo")
renda[4]==("Sexo")


renda[5]==("Homem") & renda[7]==("Total")

# Monta um banco de dados separado que contenha as condicoes escolhidas 
# como se utilizarmos a condicao "if" para palavra 'Homem e Total'



Tabela <- renda[renda$Categoria=="Homem" & renda$Categoria.1=="Total",]




edit(Tabela)



# mudar nome da coluna referente a variavel (colnames)



colnames(Tabela)[6]<-'ABERT'

colnames(Tabela)[2]<-'TERR'

colnames(Tabela)[3]<-'cidade'

View(Tabela)

# Tirar espacos no arquivo numerico de texto (gsub)


Tabela$X2013<- gsub(" ","",Tabela$X2013)

Tabela$X2014<- gsub(" ","",Tabela$X2014)

Tabela$X2015<- gsub(" ","",Tabela$X2015)

  
# mudar variavel de texto (chr) para numerico (num). Introduz (NA) (as)


Tabela$X2013<- as.numeric(Tabela$X2013)

Tabela$X2014<- as.numeric(Tabela$X2014)

Tabela$X2015<- as.numeric(Tabela$X2015)

View(Tabela)

# somar coluna (sum)


soma2013 <- sum(Tabela$X2013, na.rm = TRUE)



# Apagar colunas (variaveis)

Tabela$ABERT<-NULL

Tabela$TERR<-NULL


View(Tabela)


# Salvar dados no formato CSV (write) nome "Arquivo estudo"



write.csv(Tabela,"Arquivo estudo")




# para arquivos muito grandes pode-se importar apenas parte do arquivo










hist(x)

# histograma e um grafico de frequencias
# histograma utiliza somente valores da mesma variavel
# Existem tres principais modos de mostrar grafico de frequencias
# Histograma, grafico de poligonos e grafico de pizza



hist(Tabela$X2014)
hist(Tabela[,7])



# Limitar tamanho dos eixos [xlim = c(min.,max)]



hist(Tabela$X2014, xlim=c(300,2400),ylim=c(0,3))



