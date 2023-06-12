# Medidas de tendencia central

# Lista 1a - Exercicio 1
# Data a tabela, que mostra a altura (em cm) e o numero de alunos de 
# uma escola. 
# Encontre: a Media, a Mediana e a Moda dos alunos com funcao da frequencia.

ALT<-c(153,157,158,160,161,162,163,165,168,170,171,172,175,176,177,180,183)
FK<-c(1,2,4,4,1,5,3,2,2,3,3,1,3,1,1,3,1)

# Calculo da media (mean) 



media <-mean(ALT)

# No exercicio em questao devemos verificar a media ponderada ( freq das medidas )
# Cria um (data frame) com os dados Altura e frequencia



tabela<- data.frame(ALT,FK)

View(tabela)

# Cria uma coluna com multiplicacao entre Altura e frequencia



tabela["XF"]<- tabela$ALT * tabela$FK
tabela

# soma os elementos da coluna 3 e 2 (colsums)



SMA3<-(colSums(tabela[3]))
SMA2<-(colSums(tabela[2]))

# Media de frequencias



print("media ponderada das frequencias")
SMA3/SMA2

# Mediana da alturas utiliza o valor do meio (median) [n=9 total = 17]


median(ALT)

ALT[9]

# Moda regiao das maiores frequencias



print("Moda Valor que se repete mais vezes na tabela (5)")
ALT[6]


# Resumo
# media da alturas (cm) errado
mean(ALT)
# media ponderada das alturas (cm) correto
SMA3/SMA2
# Mediana
ALT[9]
# Moda
ALT[6]


# Grafico de poligonos ' referencia visual '

plot(tabela$ALT,tabela$FK,type="l",main="Grafico de poligonos", 
     ylab= "Frequencia",xlab="Altura Cm", xlim=c(150,185))






# Observacao
# A mediana e util quando temos um valor muito fora da escala
# sendo que este valor, nao pode ser descartado.
# exemplo (500 = var14)

ALT1<-c(153,157,158,160,161,162,163,165,168,170,171,172,175,500,177,180,183)
# Media das alturas(ALT1)

mean(ALT1)

# Mediana das alturas(ALT1)
median(ALT1)




