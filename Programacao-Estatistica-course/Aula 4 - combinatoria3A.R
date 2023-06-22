# 
# Lista 3A - Combinatoria 
#
library(gtools)

# Arranjos


# Lista 3 exercicio 1

# A senha de um cartão eletrônico é formada por duas letras e três números
# De quantas formas diferentes pode-se confeccionar uma senha?


# fatorial de 26 letras separadas em 2




A1<- ( factorial (26) / ( factorial (26-2) ) )
A1

# fatorial de 10 numeros separados em 3





A2 <- ( factorial (10) / ( factorial (10-3)  ) )
A2


# interseccao de arranjos : multiplicacao de eventos



AR <- A1*A2
AR

# Lista 3 exercicio 2

# Um número de telefone é formado por 9 algarismos.
# Determine quantos números de telefone podemos formar com algarismos diferentes
# contanto que toda combinação comece com 9 e termine com 3.

# Arranjo de 9 elementos com dois numeros constantes
# dois numeros constantes: 9 - 2 = 7





A3 <- ( factorial (9) / (factorial (9-7)))
A3


# combinacao 

# Lista 3 exercicio 3
# Uma classe tem 15 alunos, sendo 9 meninas e 6 meninos. 
# Quantas comissões de duas meninas e dois meninos podem ser formadas?


# dois meninos
# visualizacao das combinacoes

C1 <- combn(6,2)
C1

C11 <- ( factorial (6) / (factorial (6-2) * factorial(2)))
C11

# duas meninas 


C21 <- ( factorial (9) / (factorial (9-2) * factorial(2)))
C21

# Multiplicacao de combinacoes



TT = C11 * C21









# Mostrar as permutacoes de 26 letras

classes <-(letters)
Letras <- permutations(26,2,classes)
Letras
