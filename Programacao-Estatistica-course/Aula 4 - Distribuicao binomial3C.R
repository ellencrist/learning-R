# 
# Lista 3C - Distribuicao binomial

 
# Lista 3C Exercicio 1

# 1)	Sabe-se que uma máquina produz 95% dos parafusos com dentro
# das especificações. Se escolhermos 4 parafusos aleatoriamente, 
# qual a probabilidade de dois deles estarem dentro das especificações.



# combinacao de 4 parafuso escolhidos dois a dois
# metodo bruto:


B42 <- ( factorial (4) / (factorial (4-2) * factorial(2)))


# probabilidade de sucesso 


B43 <- 0.95 ^ 2
B44 <- 0.05 ^ 2


# distribuicao binomial - multiplicacao da combinacao e probabilidade



BTT <- B42 * B43 * B44

# distribuicao binomial  
# metodo com 'R' ( dbinom(x, size, prob) )



B1 <-  dbinom(2, 4, 0.95)
B1

# Lista 3C Exercicio 2

# 2) A atendente de uma loja perde 3,8 minutos em média para atender um pedido. 
# Apenas 0,25 duram mais que 3,8 minutos. 
# Qual a probabilidade de que três chamadas aleatoriamente selecionada:

# a) duas ligacoes durem mais de 3,8 minutos



B31 <- dbinom(2, 3, 0.25)


# b) nenhuma dure mais que 3,8 min? 



B32 <- dbinom(0, 3, 0.25)




# Lista 3C Exercicio 4

# 4)	Se 20% dos chinelos produzidos por uma maquina são defeituosos,
# determinar a probabilidade de, entre 4 chinelos escolhidos ao acaso:

# a) um ser defeituoso



B41 <- dbinom( 1, 4, 0.20)



#b) nenhum ser defeituoso 


B42 <- dbinom( 0, 4, 0.20)


# c) no máximo dois serem defeituosos: Total menos a prob. 2




B43 <- 1 - (dbinom( 3, 4, 0.20))


# Lista 3C Exercicio 7

# 7) Um vendedor de seguros vendeu 5 apólices para homens saudáveis de meia idade. 
# Daqui 30 anos a chance do homem estar vivo é 2/3. 
# Determinar a probabilidade dos homens estarem vivos daqui a 30 anos: 

# a) Todos os 5 homens  



B71 <- dbinom( 5, 5, 2/3)

# b) Pelo menos 3 homens : soma das distribuicoes ( dbinom(x, size, prob) )



B72 <- dbinom( 5, 5, 2/3) +  dbinom( 4, 5, 2/3) +  dbinom( 3, 5, 2/3)



# c) Apenas 2 homens 



B73 <- dbinom( 2, 5, 2/3)


# d) Pelo menos um - total 1 menos a distribuicao



B74 <- 1 - dbinom( 0, 5, 2/3)


