#
# Lista 3D - Distribuicao Poisson

# Exercicios

# Lista 3D exercicio 1

# 1)	Uma equipe de manutenção atende em média cinco chamadas por hora.
# Determinar a probabilidade de que, em uma hora selecionada aleatoriamente, 
# sejam recebidos exatamente quatro chamadas ?

# metodo de distribuicao bruto: x = 5 lb = 5 - 1 = 4


A1 <- 5^4
A2 <- exp(-5)
A3 <- factorial(4)
P1 <- ( A1 * A2) / A3


# distribuicao de Poison 
# metodo com 'R' : dpois( x , lambda = l)



P2 <- dpois( 5, lambda = 5)



# Lista 3D exercicio 2

# 2)	Suponha que o número médio de acidentes com fogos de artificio ocorridos 
# por ano, em uma cidade é de 5 por 100.000 pessoas. Determinar a probabilidade
# de, em uma cidade de 200.000 habitantes, haver: 


# a) zero acidentes : dpois( x , lambda = l) ( 2 * 5 = 10 )



P21 <- dpois( 0, lambda = 10)



# b) dois acidentes : dpois( x , lambda = l)



P22 <- dpois( 2, lambda = 10)



# c) mais de dois acidentes : Total menos a soma das distribuicoes 

#  R =  1  - (p(0) + P(1) + p(2))


P241 <- dpois( 0, lambda = 10)
P242 <- dpois( 1, lambda = 10)
P243 <- dpois( 2, lambda = 10)

P44 <- 1 - (P241 + P242 + P243)



# Lista 3D exercicio 3

# 3)	Se 3% das lâmpadas elétricas fabricadas por uma companhia são defeituosas, 
# determinar a probabilidade de, em uma amostra de 100 lampadas, serem defeituosas


# a) nenhuma lâmpada : dpois( x , lambda = l)



P33 <- dpois( 0, lambda = 3)



# b) duas lâmpadas :  dpois( x , lambda = l)



P34 <- dpois( 2, lambda = 3)


# c) quatro lâmpadas :  dpois( x , lambda = l)



P35 <- dpois( 4, lambda = 3)



# d) no máximo duas lâmpadas : soma das distribuicoes de Poison



P35D1 <- dpois( 0, lambda = 3)
P35D2 <- dpois( 1, lambda = 3)
P35D3 <- dpois( 2, lambda = 3)

P35D4<- (P35D1 + P35D2 + P35D3)


# e) Mais de duas lâmpadas.: Total 1 menos a soma das distribuicoes de Poison



P330 <- dpois( 0, lambda = 3)
P331 <- dpois( 1, lambda = 3)
P332 <- dpois( 2, lambda = 3)
P33TT <- 1 - (P330 + P331 + P332)

