type Dia = Int
type VendaR = Int

periodo::Int
periodo = 7

f :: Int -> Int
f 1 = 41
f 2 = 72
f 3 = 48
f 4 = 2
f 5 = 91
f 6 = 55
f 7 = 30
f _ = 0

{-encontra o dia em que mais se vendeu no período - versão 02
  tem como parâmetros o período e a maior venda -}
diaMaiorVenda02::Int->Int->Int
diaMaiorVenda02 1 _ = 1
diaMaiorVenda02 y v 
  |f y == v  = y
  |otherwise = diaMaiorVenda02 (y-1) v

{- encontra o maior valor entre dois inteiros -}
maxi::Int->Int->Int
maxi m n
   |m >= n = m
   |otherwise = n

{- encontra a maior venda - versão 01 
   Exercício: implemente essa função com apenas dois parâmetros e 
   fazendo uso de maxi no código interno-}
maiorVenda01::Int->Int
maiorVenda01 0 = 0
maiorVenda01 x = maxi (f x) (maiorVenda01(x - 1))
  
{- encontra a maior venda - versão 02 -}
maiorVenda02::Int->Int->Int
maiorVenda02 0 y = y
maiorVenda02 x y
  |f (x-1) > y = maiorVenda02 (x-1) (f (x-1))
  |otherwise = maiorVenda02 (x-1) y


