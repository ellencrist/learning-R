# Montar grafico de frequencia de uma distribuicao
# Lista de exercicio 1 - exercicio 2

# A coordenador pedagogica de uma escola realizou uma pesquisa com 30 alunos, 
# de 5 a 9 anos, na qual questionu-se o tempo medio (em minutos) que as criancas 
# assistiam programas televisivos diariamente. A tabela indica as respostas
# construa o histograma com intervalo de 20 min e o poligono de frequencias.

#  Inserindo valores na variavel tempo


tempo<-c(30,40,20,90,60,25,60,90,60,30,60,20,90,60,60,110,30,100,60,90,60,40,90,25,60,60,60,25,90,60)

# quantidade de medidas (length)


length(tempo)

# Organiza dados (sort)



ORG <- sort(tempo)


# Organiza os dados do 'tempo' em frequencias (table)


table(tempo)


# Coloca a tabela de frequencias na vertical (transform)



transform(table(tempo))


# Frequencias relativas ao numero total de medidas (30)




transform(table(tempo), FreqRel=Freq/30) 



# Frequencias acumuladas (cumsum)


transform(table(tempo), FreqRel=Freq/30, FreqAcum=cumsum(Freq))


# Frequencias relativas acumuladas



TB <- transform(table(tempo), FreqRel=Freq/30, FreqAcum=cumsum(Freq), FreqRelAcum=cumsum(Freq)/30)
TB
# Coloca 3 graficos em uma linha (par)





par(mfrow=c(1,3))


# construir grafico de frequencias tipo: (barplot) (hist) 
# Somente uma variavel 




barplot(table(tempo))

hist(tempo)



# definir nomes do intervalo de frequencias (variavel classes)



classes<-c("20-40","40-60","60-80","80-100","100-120")

# Construir grafico de frequencias com variacao de intervalos (20 em 20kg)
# considera os valores na barra do lado direito(right = TRUE)




hist(tempo,main="histograma",right=TRUE,labels=classes,ylim=c(0,14))

# Valores mais 'exigentes' coloca os valores para mais
# considera os valores na barra do lado esquerdo (right=FALSE)




hist(tempo,main="histograma",right=FALSE,labels=classes,ylim=c(0,14))



# Montagem do grafico de poligonos
# Obtem os valores para construcao de grafico de poligono




histog = hist(tempo, plot=FALSE)

# Extrai os valores dos pontos medios das frequencias (histog$mid)
# inclui os pontos limites 20 e 110



pm = c(20, histog$mids, 110)


# Define o intervalo de frequencias [seq(min,max,intervalo)] (10 em 10 min.)



intervalo<-seq(20,120,20)

# separa as frequencias no intervalo definido (cut)




frek <- table(cut(tempo,breaks=intervalo,right=FALSE))

# coloca os valores iniciais e finais na variavel de frequencias




freq = c(0, frek, 0)



# graficos de poligono x,y




plot(pm,freq,type='b',main="Graf. poligono",xlab="Tempo (min)",ylab="frequencia",ylim=c(0,14),xlim=c(20,120))




# Conclusao: 
# A maioria dos alunos assistem em media 75min. de televisao.


# Conclusao:
# A maioria dos alunos assistem em media 50min. de televisao.

# Encontrar o valor medio













# mudar o intervalo de medidas
# Define o intervalo de frequencias [seq(min,max,intervalo)] (10 em 10 min.)

par(mfrow=c(1,2))

intervalo<-seq(20,120,10)

classes<-c("20-30","30-40","40-50","50-60","60-70","70-80","80-90","90-100","100-110","110-120")

hist(tempo,main="histograma",right=TRUE,labels=classes,ylim=c(0,14),breaks=intervalo)

hist(tempo,main="histograma",right=FALSE,labels=classes,ylim=c(0,14),breaks=intervalo)

