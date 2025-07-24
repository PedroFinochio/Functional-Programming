vendas :: Int -> Int
vendas 0 = 0
vendas 1 = 41
vendas 2 = 72
vendas 3 = 48
vendas 4 = 0
vendas 5 = 91
vendas 6 = 55
vendas 7 = 30

maxi::Int->Int->Int
maxi x y 
    | x >= y = x
    | otherwise = y

{- 01 função que retorna uma lista de vendas -}
listaVendas :: Int-> [Int]
listaVendas 0 = []
listaVendas x = vendas x : listaVendas (x-1)

{- 02 função que retorna [[Int]] com listas de dia e venda -}
listaDiaVendas::Int->[[Int]]
listaDiaVendas 0 = []
listaDiaVendas x = [x, vendas x] : listaDiaVendas (x-1)

{- 03 função que ordena uma lista de inteiros -}
ordenaLista::[Int]->[Int]
ordenaLista [] = []
ordenaLista xs = menorElemento xs : ordenaLista (removeElemento (menorElemento xs) xs)

menorElemento::[Int]->Int
menorElemento [a] = a
menorElemento (h:t)
    | h < menorElemento t = h
    | otherwise = menorElemento t

removeElemento::Int->[Int]->[Int]
removeElemento x [] = []
removeElemento x (h:t)
    | x == h = t
    | otherwise = h : removeElemento x t


ordAux :: [Int] -> [Int]
ordAux [] = []
ordAux [x] = [x]
ordAux (x:y:xs)
    | x > y = y : ordAux (x:xs)
    | otherwise = x : ordAux (y:xs)

bubbleSort :: [Int] -> [Int]
bubbleSort xs 
    | xs == ordAux xs = xs
    | otherwise = bubbleSort (ordAux xs)

---------tuplas------------

{- 06 função que gera uma lista de tuplas com dia e venda -}
listaTuplaDiaVenda :: Int-> [(Int, Int)]
listaTuplaDiaVenda 0 = []
listaTuplaDiaVenda x = (x, vendas x) : listaTuplaDiaVenda (x-1)

{- 07 função que gera o total de vendas-}
totalVendasT::[(Int, Int)] -> Int
totalVendasT [] = 0
totalVendasT ((a,b):x) = b + totalVendasT x 

{- 08 função que retorna a maior venda -}
maiorVendaT::Int->[(Int, Int)]->Int
maiorVendaT mv [] = mv
maiorVendaT mv ((a,b):x) = maiorVendaT (maxi mv b) x


{- 08-b como implementar com apenas os parâmetros? -}
maiorVendaT02::[(Int, Int)]->Int 
maiorVendaT02 [] = 0
maiorVendaT02 ((a,b):x)
    | b >= maiorVendaT02 x = b
    | otherwise = maiorVendaT02 x 

