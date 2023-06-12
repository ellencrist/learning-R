# Medidas de Dispersao
# Lista de exercicio 2 - Exercicio 2 


# Data a tabela, que mostra o peso (em kg) de uma amostra de 20 frequentadores 
# de um club esportivo. 
# Determine: o desvio padrao e o coeficiente de variacao

peso<-c("60-65","65-70","70-75","75-80","80-85","85-90")
FK<-c(1,5,4,4,3,3)

# Nao e possivel calcular a media em valores qualitativos discretos

# Calculo da media ponderada
# Cria um (data frame) peso e frequencia





tabela<- data.frame(peso,FK)

str(tabela)
tabela

# Cria coluna (XF) com os valores medios dos intervalos





tabela["XF"]<-c(62.5,67.5,72.5,77.5,82.5,87.5)
tabela


# Cria coluna (RF) com a multiplicacao do peso medio e frequencia




tabela["RF"]<-tabela$FK*tabela$XF
tabela


# Calculo da media ponderada
# soma os elementos da coluna 4 e 2




SM4<-(colSums(tabela[4]))
SM2<-(colSums(tabela[2]))

# Media ponderada das frequencias





MD<-SM4/SM2
MD


# cria coluna com a Variacao quadratica da diferenca entre 
# a media ponderada e o valor de x
# multiplica o resultado pela frequencia
# inclui na tabela (NM)




tabela["NM"]<-((( tabela$XF - MD ) ^2 ) * tabela$FK)
tabela


# soma os elementos da coluna 5





SM5<-(colSums(tabela[5]))


# Variancia da amostra




VA <- SM5/((SM2)-1)
VA


# Desvio padrao ( utilizar somente um algarismo significativo)




DP <- sqrt(VA)
DP

# Coeficiente de variacao
# variacao percentual entre a media e o desvio padrao





CV<-(DP/MD)*100
CV


# Maneira de colocar a resposta: 
# Valor medio : 75(8)
# a maioria da medidas estao entre 67 e 83
# desvio padrao 10%  muito alto



# grafico - somente para visualizacao




plot(tabela$XF,tabela$FK, type='h', main="peso medio",xlab="Peso (kg)",ylab="frequencia",
   ylim=c(0,6),xlim=c(60,90))

# segmento de retas (segments (X1,Y1 ate X2,Y2))







segments(75,0,75,10,col="red",lwd=2)
segments(67,0,67,10,col="blue",lwd=2)
segments(83,0,83,10,col="blue",lwd=2)
arrows(67,2,83,2,col="orange",code=3,lwd=2)

