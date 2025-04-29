{- Assunto: listas e tuplas -}
periodo::Int
periodo = 7

maxi::Int->Int->Int
maxi m n
   |m >= n = m
   |otherwise = n

-- tabela de vendas
vendas::Int->Int
vendas 0 = 0
vendas 1 = 41
vendas 2 = 72
vendas 3 = 48
vendas 4 = 0
vendas 5 = 91
vendas 6 = 55
vendas 7 = 30

--Função que retorna uma lista de vendas
listaVendas::Int->[Int]
listaVendas (-1) = []
listaVendas d = vendas d : listaVendas(d-1)

--Função que retorna [[Int]] com listas de dia e venda 

listaDiaVendas::Int->[[Int]]
listaDiaVendas (-1) = []
listaDiaVendas d = [d, vendas d]:listaDiaVendas (d-1)  
  
----------------------------------------------------------
--Função que ordena uma lista de inteiros com função auxiliar 

menor::[Int]->Int
menor [a] = a
menor (a:x) 
  | a < (menor x) = a 
  | otherwise = menor x

remove_menor::[Int]->[Int]
remove_menor [a] = []
remove_menor (a:x)
  | a == (menor x) = x
  | otherwise = a : remove_menor x

ordenaLista::[Int]->[Int]
ordenaLista [] = []
ordenaLista [a] = [a]
ordenaLista (a:x) = (menor (a:x)) : (ordenaLista (remove_menor (a:x)))

-------------------------------------------------------------------------
--Função que ordena [[Int]] pelo primeiro Int de cada lista  
ordenaListaLista::[[Int]]->[[Int]]
ordenaListaLista [] = []
ordenaListaLista (a:x) = ordenaLista a : ordenaListaLista x

---------------------------------------------------------------------------
{- 05 função que ordena as listas internas de [[Int]] e, em seguida, ordena a [[Int]] -}
--ordenaLILE::[[Int]] ->[[Int]]


-----------  tuplas --------------------------------------------------------

--Função que gera uma lista de tuplas com dia e venda 
listaTuplaDiaVenda::Int->[(Int, Int)]
listaTuplaDiaVenda (-1) = []
listaTuplaDiaVenda d = (d, vendas d):listaTuplaDiaVenda (d-1)

--Função que gera o total de vendas
totalVendasT::[(Int, Int)]->Int
totalVendasT [] = 0
totalVendasT ((_,b):x) = b + totalVendasT x 

--Função que retorna a maior venda 
maiorVendaT::Int->[(Int, Int)] -> Int
maiorVendaT mv [] = mv
maiorVendaT mv ((a,b):x) = maiorVendaT (maxi mv b) x
  
{-como implementar com apenas os parâmetros? 
maiorVendaT::[(Int, Int)]->Int
maiorVendaT [] = 0
maiorVendaT   -}
  
--Função que retorna os dias das maiores vendas 
diasMaioresVendas::[(Int,Int)]->Int->[Int]
diasMaioresVendas [] _ = []
diasMaioresVendas ((d,v):x) y
  | v == maiorVendaT = d : 
  | otherwise = diasMaioresVendas 
