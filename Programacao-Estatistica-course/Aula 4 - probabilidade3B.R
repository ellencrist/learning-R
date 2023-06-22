#
# Lista 3B - Probabilidade
#


# lista 3B Exercicio 1 

# Se jogarmos dois dados, um azul e um branco, simultaneamente
# qual a probabilidade de dar pelo menos um 6 ?
# ocorrência simultânea dos eventos A e B (eventos independentes)
#  (A Ս B ) =  P(A) + P(B)  - (A Ո B)




# probabilidade de sair 6 no dado azul

PA = 1/6


# probabilidade de sair 6 no dado branco


PB = 1/6


# interseccao de aventos: multiplicacao de probabilidades
# ocorrer 6 nos dois dados.



PAB = (1/6) * (1/6)


# probabilidade - uniao de eventos 'simultaneos'



P11 = PA + PB - PAB






# lista 3B Exercicio 2

# Duas caixas, a primeira possui uma bola branca, duas azuis e duas pretas 
# a segunda possui quatro bolas brancas, uma azul e uma preta. 
# escolher uma caixa e retira uma bola, qual a probabilidade de que a bola seja branca ?

# caixa 1 - 5 bolas
# (A Ո B Ո ... Ո K  ) =  P(A) * P(B) *...* P(K)
# ocorrência simultânea dos eventos A e B 


P2A = ( 1/2 ) * ( 1/5)
P2A
# caixa 2 - 6 bolas


P2B = ( 1/2 ) * ( 4/6 )
P2B


# as duas caixas  uniao de eventos simultaneos
# (A Ս B Ս .... Ս K ) =  P(A) + P(B) + ... + P(K)


P2T = P2A + P2B
P2T



# lista 3B Exercicio 6

# Três máquinas A, B e C produzem, respectivamente, 25%, 40% e 35% da produção diária 
# de uma empresa de autopeças. Sabe-se, por experiências anteriores, 
# que as porcentagens de autopeças defeituosas em cada máquina são de 5%, 2,5% e 4%
# Retirando-se uma autopeça da produção diária desta empresa, 
# foi verificado que era defeituosa, qual a probabilidade da autopeça 
# ter sido fabricada pela máquina C?



# maquina 'C' interseccao de eventos



P6C <-  0.35 * 0.04


# todas as maquinas - interseccao de eventos e soma de probabilidades



P6T <-  0.25*0.05 + 0.40*0.025 + 0.35*0.04


# probabilidade  - resultado favoravel / todas as possibilidades



P6P <- P6C / P6T

