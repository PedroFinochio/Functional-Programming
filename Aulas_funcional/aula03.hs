-- Tupla: estrutura de tamanho fixo que agrupa valores (podem ser de tipos diferentes).

{- Diferenças entre listas e tuplas

listas: homogenea e tamanho variável 
tuplas: heterogenea e tamanho fixo

-}

{- Algumas funçoẽs com tuplas 

fst::(a,b)->a
snd::(a,b)->b
zip::[a]->[b]-> [(a,b)]
unzip::[(a,b)]->([a],[b])

-}

-- Defina a função que dado um mes, um dia e um ano retorna uma data. Ex: data 1 31 2004 = (31,1,2004)
data2::Int->Int->Int->(Int,Int,Int)
data2 m d a = (d,m,a)

{- Defina a função comparaDatas que, dadas duas datas, retorna True se a primeira for posterior à segunda.

Ex: comparaDatas (1,10,2025) (01,09,2025) = True

-}

comparaDatas::(Int,Int,Int)->(Int,Int,Int)->Bool
comparaDatas (m1,d1,a1) (m2,d2,a2)
    | d1 == d2 + 1 = True
    | otherwise = False





