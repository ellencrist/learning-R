# Distribuicao de student Exemplo
# Estimativa de parametros
# Descrever uma caracteristica numerica populacional
# Amostras com menos de 30 elementos ~ distribuicao normal, utiliza distribuicao de Student (dt)
# grafico da distribuicao de student utilizando 14 graus de liberdade (df <30)
# Grafico nao centralizado (ncp)


plot(function(x) dt(x, df =14, ncp = 1), -2, 10, ylim = c(0, 0.4), main = "Densidade t nao central")





# LIsta de exercicios 2a - Exercicio 3
# Uma amostra com 15 elementos extraido de uma populacao com distribuicao normal,
# forneceu media de 5,40 m e desvio padrao 0,80 m. 
# Construir um intervalo de confianca de 90% para a media dessa populacao


NR <-15
MD <- 5.40


NR <-15
MD <- 5.40
SD <- 0.80




# Tabela Student com 90% de confianca e 14 termos (n(15-1))




TS = qt(0.95,14)
TS



# formula pra calcular o erro maximo na populacao com menos de 30 elementos





E = TS*(SD/sqrt(NR))
E

MD+E
MD-E


# Resposta
# Portanto com 90% de confianca, podemos dizer que a media populacional esta em
# 5.4(0.4) m
# ou seja valor da media da populacao esta entre 5,0 a 5,8 m



# OBS:  a incerteza da media da amostra
#  e o dobro da incerteza da populacao dado no exercicio
# 5.4(0.8)


