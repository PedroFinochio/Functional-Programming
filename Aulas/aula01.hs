type Dia = Int
type VendaR = Int

f :: Int -> Int
f 1 = 41
f 2 = 72
f 3 = 48
f 4 = 2
f 5 = 91
f 6 = 55
f 7 = 30
f _ = 0

{- retorna o total de vendas do período -}
totalVendas::Int->Int
totalVendas 0 = 0
totalVendas x = f x + totalVendas (x-1)

{-encontra o dia em que mais se vendeu no período - versão 01-}
diaMaiorVenda::Int->Int
diaMaiorVenda 0 = 0
diaMaiorVenda x
    | f x >= f (diaMaiorVenda (x-1)) = x
    | otherwise = diaMaiorVenda (x-1)

{-encontra o dia em que mais se vendeu no período - versão 02
tem como parâmetros o período e a maior venda -}
diaMaiorVenda02::Int->Int->Int
diaMaiorVenda02 1 _ = 1
diaMaiorVenda02 y v 
  |f y == v  = y
  |otherwise = diaMaiorVenda02 (y-1) v


{- encontra o maior valor entre dois inteiros -}
maxi::Int->Int->Int
maxi x y 
    | x >= y = x
    | otherwise = y

{- encontra a maior venda - versão 01 
   Exercício: implemente essa função com apenas dois parâmetros e 
   fazendo uso de maxi no código interno-}
maiorVenda01::Int->Int
maiorVenda01 x 
    | f x >= maxi (f x) (f (x-1)) = f x 
    | otherwise = maiorVenda01 (x-1) 

{- encontra a maior venda - versão 02 -}
maiorVenda02::Int->Int->Int
maiorVenda02 0 y = y
maiorVenda02 x y 
    | f x >= y = maiorVenda02 (x-1) (f x)
    | otherwise = maiorVenda02 (x-1) y
