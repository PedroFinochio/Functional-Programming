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
listaVendas 0 = [0]
listaVendas d = 

{- 02 função que retorna [[Int]] com listas de dia e venda -}

listaDiaVendas::Int->[[Int]]
listaDiaVendas (-1) = []
listaDiaVendas d = [d, vendas d]:listaDiaVendas (d-1)  
  
----------------------------------------------------------
{- 03 função que ordena uma lista de inteiros -}
--ordenaLista::[Int]->[Int]


-------------------------------------------------------------------------
{- 04 função que ordena [[Int]] pelo primeiro Int de cada lista  -}
--ordenaListaLista::[[Int]]->[[Int]]


---------------------------------------------------------------------------
{- 05 função que ordena as listas internas de [[Int]] e, em seguida, ordena a [[Int]] -}
--ordenaLILE::[[Int]] ->[[Int]]


-----------  tuplas --------------------------------------------------------
{- 06 função que gera uma lista de tuplas com dia e venda -}
--listaTuplaDiaVenda :: Int-> [(Int, Int)]
listaTuplaDiaVenda :: Int-> [(Int, Int)]
listaTuplaDiaVenda (-1) = []
listaTuplaDiaVenda d = (d, vendas d):listaTuplaDiaVenda (d-1)

{- 07 função que gera o total de vendas-}
--totalVendasT::[(Int, Int)] -> Int

{- 08 função que retorna a maior venda -}
maiorVendaT::Int->[(Int, Int)] -> Int
maiorVendaT mv [] = mv
maiorVendaT mv ((a,b):x) = maiorVendaT (maxi mv b) x
  
{- 08-b como implementar com apenas os parâmetros? 
  maiorVendaT::[(Int, Int)] -> Int  -}  
  
{- 09 função que retorna os dias das maiores vendas -}

