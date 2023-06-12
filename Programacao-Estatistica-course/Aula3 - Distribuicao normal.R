# Distribuicao normal Exemplo

# Estimativa de parametros - 
# Transportar o valor da media, de uma amostra para a populacao inteira
# Conjunto com muitos valores gera uma distribuicao normal
# criar uma histograma com distribuicao normal de 100 medidas aleatorias (g)





g <- rnorm(100,3,2)
g
hist(g)


# Cria uma curva utilizando a funcao normal, referente as medidas aleatoria de g
# utiliza a media e o desvio padrao dos valores de g




curve((dnorm(x,mean(g),sqrt(var(g)))*100), col="blue", lwd=2,add=TRUE)


# Descreve uma caracteristica numerica populacional
# Amostras com mais de 30 elementos gera uma distribuicao normal (teorema limite central)
# Nivel de confianca: Probabilidade que o intervalo estimado contenha o parametro populacional

# Lista de exercicio 2a - Exercicio 1
# Uma amostra com 36 elementos, foi retirado de uma distribuicao aproximadamente normal,
# forneceu media de 15,5 m e desvio padrao 1,5 m. Construir um intervalo de confianca de 95%
# para a media da populacao





N<- 36
MD<- 15.5
SD<- 1.5

# Apresenta o valor para a tabela normal com 95% de confianca




Z<-qnorm(0.975)
Z

# formula pra calcular o erro maximo na populacao




E<-(Z*(SD/sqrt(N)))
E

MD-E
MD+E



# Resposta
# Apresentacao da resposta no modo mais moderno: 15,5 (0,5)
# Portanto com 95% de confianca, podemos dizer que a media populacional esta entre
# 15,0 a 16,0


# No exercico anterior, verificamos que o desvio padrao de uma 'amostra',
# e praticamente 3x maior que o desvio padrao para a populacao
# 15,5 (1.5)  ->  14,0 a 17,00




# Lista de exercicio 2a - exercicio 2
# Com os dados dos exemplo anterior, determinar o tamanho requerido de uma amostra
# para assegurar que, com confianca de 95%, a media amostral esteja dentro do
# intervalo de 0,25 da media populacional



CD<-0.975
E1<-0.25
S1<-1.5

# Apresenta o valor para a tabela normal com 95% de confianca





Z<-qnorm(CD)
Z


# Utilizando a formula para calcular o numero de medidas n 




NR1=((Z*S1)/E1)^2
NR1

# Quantidade minima de dados requeridos e 138 medidas

