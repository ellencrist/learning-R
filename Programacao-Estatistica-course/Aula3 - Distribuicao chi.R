# Variacao da variancia exemplo
# Estimativa de parametros - Variancia para a populacao

# Distribuicao Chi quadrado 
# Distribuicao normal para 100 medidas (n)
# Valor da variancia para a populacao ( com o valor da variancia encontramos o desvio padrao)
# Familia de curvas onde cada curva e definida pelo grau de liberdade (n) (30)(20)(15)
# Utiliza a variancia das medidas, e a area da curva e igual a 1






par(mfrow=c(1,3))






curve( dchisq(x, 5), 0, 30, n = 100)
curve( dchisq(x, 5), 0, 20, n = 100)
curve( dchisq(x, 5), 0, 15, n = 100)


# Exercicio lista 2a - exercicio 4
# Uma amostra de 15 elementos, extraida de uma populacao com distribuicao normal,
# forneceu variancia 7,05. Construir intervalo de confianca de 95% para
# a variancia e para o desvio padrao populacionais.




NR<-15
SD <-7.05



# Valor do alfa para encontrar a o valor da tabela do qui-qradrado





AL1=(1-0.95)/2
AL2=(1+0.95)/2


# Tabela chi quadrado com 95% de confianca (n-1) graus de liberdade





X2<-qchisq(AL2,14)
X3<-qchisq(AL1,14)

# Formula para encontrar o Intervalo de confianca de 95%, para variancia da populacao.





AB1=(NR-1)*SD/X2
AB2=(NR-1)*SD/X3


# Intervalo de confianca de 95% para desvio padrao da populacao






DS1=sqrt(AB1)
DS2=sqrt(AB2)
DS2-DS1


# Resposta 
# Desvio padrao populacional, com 95% de confianca e 2,25 

# arredondamento somente no final, utilizar somente um algarismo significativo.
# Desvio padrao populacional, com 95% de confianca (2).

# Variacao de alfa  ( 1.94   ate  4.19)     


# Observacao:
# Desvio padrao da amostra  sqrt(7,05) e 2,65 
# variacao dos desvio padrao entre a amostra e a populacao e ~25%



