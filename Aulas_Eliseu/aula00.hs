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

{- função que retorne a maior venda da semana -}
maiorVenda::Int->Int->Int
maiorVenda 0 v = v
maiorVenda d v
    | f d > v = maiorVenda (d-1) (f d)
    | otherwise = maiorVenda (d-1) v

{- implemente uma função que retorne o dia em que houve a maior venda -}
diaMaiorVenda::Int->Int->Int
diaMaiorVenda 0 v = 0
diaMaiorVenda d v
   | f d > maiorVenda (d-1) v = d
   | otherwise = diaMaiorVenda (d-1) v


{- implemente uma função que retorne a quantidade de vendas do período -}
qtdVendas::Int->Int
qtdVendas 0 = 0
qtdVendas x = f x + qtdVendas (x-1)

{- implemente uma função que retorne a média de vendas-}
media::Int->Int
media 0 = 0
media x = qtdVendas x `div` x


    


















