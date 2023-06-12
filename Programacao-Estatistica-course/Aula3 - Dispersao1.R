# Medidas de Dispersao
#Lista de exercicio 2 - Exercicio 1

# Dada a tabela, que mostra a altura (em cm) e o numero de alunos de 
# uma escola, encontre: a variancia e o desvio padrao entre as alturas.

ALT<-c(155,156,158,160,162,164,168,170)
FK<-c(5,3,5,8,5,8,4,2)

# Calculos media(mean) variancia(var) desvio padrao (sd) da altura






media <-mean(ALT)
variancia <-var(ALT)
desvio <-sd(ALT)

# no exercicio em questao, e preciso verificar as frequencias de alunos

# Calculo da media ponderada
# Cria uma tabela com as colunas Altura e frequencia (data frame)





tabela<- data.frame(ALT,FK)
View(tabela)


# Cria a coluna (XF) com a multiplicacao entre Altura e frequencia





tabela["XF"]<-tabela$ALT*tabela$FK
tabela

# soma os elementos da coluna 3 e 2 (colSums)





SM3<-(colSums(tabela[3]))
SM2<-(colSums(tabela[2]))

# Media ponderada da altura (correto)




MP<-SM3/SM2
MP

# Calculo da variancia ponderada
# Criar uma coluna (NM) com Variacao quadratica da diferenca entre a media ponderada
# e o valor das alturas, multiplica pelas frequencias





tabela["NM"]<-(((tabela$ALT-MP)^2)*tabela$FK)
tabela

# soma os elementos da coluna 4 (colSums)





SM4<-(colSums(tabela[4]))

# Variancia ponderada da amostra
# divisao da soma dos elememtos da coluna 4 pela soma elementos col 2
# como utilizamos uma 'amostra' dos alunos, subtrai 1 elemento da coluna 2
# diminui um grau de liberdade 




VA <- SM4/((SM2)-1)
VA



# No caso do exercico 2 devemos considerar a frequencia de repeticao dos elementos
# Desvio padrao correto





DP <- sqrt(VA)
DP


# Conclusao:

# Considerar somente um algarismo significativo ( somente um numero)
# no caso do desvio padrao de 4,36 recomenda-se utilizar somente o numero 4 

# Maneira moderna de colocar a resposta: 
# Valor medio da altura : 161(4)  ou seja:
# a maioria da medidas(68%) estao entre 165 e 157





# Grafico de dispersao ( apenas para efeito visual)

# Grafico de pontos ( plot ) Valores organizados




plot(ALT)



# grafico  de pontos( plot ) com duas variaveis (x,y)




plot(ALT,FK)


# mudar o tipo de grafico (type=p) - pontos
# mudar o tipo de grafico (type=l) - linhas
# mudar o tipo de grafico (type=b) - linha e pontos
# mudar o tipo de grafico (type=c) - linhas sem pontos
# mudar o tipo de grafico (type=h) - histograma


plot(ALT,FK, type='h')



# Mudando o nome do grafico (main)
# Mudando o nome dos eixos (xlab ou ylab)




plot (ALT,FK, type='h',main="Variacao das alturas",xlab="Altura (cm)",ylab="frequencias")

# Mudando o limites dos eixos (xlim ou ylim) 
# coloca-se os valores iniciais e finais no vetor (c=(x1,y1))






      
plot (ALT,FK, type='h',main="Variacao das alturas",xlab="Altura (cm)",ylab="frequencias",
       ylim=c(0,10),xlim=c(150,170))




# Colocando segmentos de reta para indicar valor medio e desvio padrao
# (segments) (X1,Y1,  X2,Y2))
# indicar as coordenadas iniciais e finais
# Mudar a cor do segmento de reta (col)
# Mudar a espessura do segmento de reta (lwd)






segments(161,0,161,10,col="blue",lwd=3)
segments(157,0,157,10,col="red",lwd=2)
segments(165,0,165,10,col="red",lwd=2)


# Colocando uma flecha indicando a incerteza das medidas 
# ( code ) indica direcao da seta (1,2 ou 3)
# indicar as coordenadas iniciais e finais (x1,y1,x2,y2)





arrows(157,5,165,5,col="orange",lwd=3,code=3)

