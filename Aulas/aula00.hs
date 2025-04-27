import Data.Char

type Dia = Int
type Venda = Int

f :: Dia -> Venda
f 1 = 9
f 2 = 7
f 3 = 15
f 4 = 14
f 5 = 8
f 6 = 0
f 7 = 3
f x = -1

--Função que retorna a maior venda da semana 
maior_venda_semana::Int->Int->Int
maior_venda_semana 0 v = v
maior_venda_semana d v 
    | f d > v = maior_venda_semana(d - 1) (f d)
    | otherwise = maior_venda_semana(d - 1) v

--Função que retorna o dia em que houve a maior venda (função f)
dia_maior_venda::Int->Int->Int
dia_maior_venda d v
    | f d == maior_venda_semana d v = d
    | otherwise = maior_venda_semana (d - 1) v 

--Função que retorna a quantidade de vendas do período
qtdVendas::Int->Int
qtdVendas 0 = 0
qtdVendas q = f q + qtdVendas(q - 1)

--Função que retorna a média de vendas
media::Int->Int
media d = qtdVendas d `div` d