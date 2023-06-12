# Exercicio de Medidas de tendencia central

# Lista exercicio 1a - Exercicio 2
# Data a tabela que mostra o peso, separado em intervalos em kg,
# e a frequencia das medidas, encontre:
# a Media, a Mediana e a Moda


PES<-c("60-65","65-70","70-75","75-80","80-85","85-90")
FK<-c(2,5,4,4,2,3)

# Encontrar a media ponderada
# Criar um (data frame) com os dados Peso e frequencia




tabela<- data.frame(PES,FK)
View(tabela)


# Cria coluna com valores de peso medio, variavel discreta qualitativa


MD<-c(62.5,67.5,72.5,77.5,82.5,87.5)

# Inclui a coluna a tabela




tabela<- data.frame(PES,FK,MD)
View(tabela)

# Cria coluna com multiplicacao da frequencia e peso medio




tabela["XF"]<- tabela$MD * tabela$FK
tabela


# soma os elementos da coluna 4 e 2 (colSums)



SMA4<-(colSums(tabela[4]))
SMA2<-(colSums(tabela[2]))

# Media de frequencias



print("media ponderada das frequencias")
SMA4/SMA2

# Mediana do peso alunos Valor do meio (median) [n=9]



median(MD)
(MD[3]+MD[4])/2

# Moda regiao das maiores frequencias



print("Moda Valor que se repete mais vezes na tabela (5x)")
MD[2]


# Resumo
print("media da altura (cm) errado")
mean(MD)
print("media ponderada das alturas (cm)")
SMA4/SMA2
print("Mediana")
median(MD)
print("Moda")
MD[2]






# poligono - (type='b')
plot(tabela$MD,tabela$FK,type="b",main="Grafico de poligonos", 
     ylab= "Frequencia",xlab="Altura Cm", xlim=c(60,90))

