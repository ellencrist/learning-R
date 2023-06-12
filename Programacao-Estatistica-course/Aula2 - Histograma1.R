# Montar histograma de frequencia para uma distribuicao continua

# Lista 1 - Exercicio 1
# Na tabela, estao apresentados os pesos em kg, de uma amostra, constituida 
# de 20 frequentadores de um clube.
# contrua o histograma e o poligono de frequencias

#  Inserindo valores na variavel peso

peso<-c(72.5,68.7,66.4,77.2,71.3,83.5,85.1,62.4,70.5,82.3,78.4,84.6,86.7,89.3,72.0,66.3,69.3,78.6,79.2,65.7)


# verificar a quantidade de dados (length)



length(peso)

# Organizar valores de peso em ordem crescente na variavel ORG (sort) # metodos para organicacao acima de 1.000.000 de dados no final





ORG<-sort(peso)
ORG

# valores 'qualitativos' 

quali <- c("Ruim","Bom","otimo","Bom","Ruim")


# organiza valores qualitativos de caracteres em ordem crescente



sort(quali)


# separa valores em quantidade ( table )




table(quali)


# Grafico de frequencia: argumento  (hist)
# separa os valores em intervalos de frequencias




hist(peso)


# grafico de pizza: argumento (pie)
# pouco visivel,pois tem muitas variaveis



pie(peso)


# Montagem do grafico de poligonos (plot) 
# Obtem os valores do histograma para construcao de tabelas de frequencia
# cria o aquivo 'histog'



histog = hist(peso, plot=FALSE)
View(histog)



# Extrai os valores dos pontos medios (histog$mids)
# Eixo x = horizontal inclui pontos 60 e 90




pm = c(60, histog$mids, 90)


# inclui valores iniciais e finais ao histograma de frequencias
# Eixo y = vertical



freq = c(0, histog$counts, 0)  

# Coloca 2 graficos na mesma linha (par) linha, coluna




par(mfrow=c(1,2))

# Grafico de (x,y) x=valores y=frequencias. argumento: (plot) 
# O grafico de 'poligonos' utiliza os pontos medios de cada intervalo
# Nome do grafico: argumento (main)
# Tipo de grafico (type)
# nome do eixo x. Argumento (xlab)
# limite do eixo y. Argumento (ylim)



plot(pm,freq, type='b', main="Poligonos",xlab="Peso kg",ylim=c(0,6))

# colocar os rotulos no histograma (labels)



classes<-c("60-65","65-70","70-75","75-80","80-85","85-90")
hist(peso,main="histograma",right=F,labels=classes,ylim=c(0,6))


# Observacoes
# Mudar o intervalo de frequencias da variavel 'peso' (breaks) 10 em 10



classes<-c("Magro","Normal","Gordo")
hist (peso,main="histograma", xlab="peso kg",ylim=c(0,10),ylab="frequencia",breaks=2,label=classes)



# Conclusao: 
# A maioria dos frequentadores do club estao com o peso entre 70-80 kg
# de acordo com o parametro 'classes', podemos considerar que a maioria
# dos frequntadores estao com o peso normal.















# organizar arquivos (sort) utilizando metodos [shell, quick, radix]
# utilizado para grande quantidade de dados


x <- rnorm(1e7)
system.time(x1 <- sort(x, method = "shell"))
system.time(x2 <- sort(x, method = "quick"))
system.time(x3 <- sort(x, method = "radix"))
stopifnot(identical(x1, x2))
stopifnot(identical(x1, x3))
