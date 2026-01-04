{-Objetivos: introduzir os conceitos de
   a) List Comprehension
   b) Função de alta ordem.
   
   Para tanto, iniciamos com um problema simples e mostramos,
   a cada passo, as possibilidades de melhorias.
   -}
import Data.Char(isAlphaNum)

{- faça f1 capaz de somar uma lista de inteiros se um Char for alfanumérico, 
    ou multiplicar os elementos, caso contrário -}
f1::Char->[Int]->Int
f1 c l
    | isAlphaNum c = soma l 
    | otherwise = multiplica l 

soma::[Int]->Int
soma [] = 0
soma (h:t) = h + soma t 

multiplica::[Int]->Int
multiplica [] = 1
multiplica (h:t) = h * multiplica t 

{- reescreva f1 usando casamento de padrão -}
f2::Char->[Int]->Int
f2 c x = f2_aux (isAlphaNum c) x

f2_aux::Bool->[Int]->Int
f2_aux True [] = 0
f2_aux True (h:t) = h + f2_aux True t 
f2_aux False [] = 1
f2_aux False (h:t) = h * f2_aux False t 

{- reescreva f2 fazendo chamadas de funções para somar ou multiplicar -}
f3::Char->[Int]-> Int
f3 c x = f3_aux (isAlphaNum c) x 

f3_aux:: Bool->[Int]->Int
f3_aux True [] = 0
f3_aux True (h:t) = h + soma t 
f3_aux False [] = 1
f3_aux False (h:t) = h * multiplica t 

{------------------------ Anotações -----------------------------------------------------------------------------------------------------
Funções de alta ordem podem:
    1. receber outras funções como argumento;
    2. retornar funções como resultado.
-}

{- reescreva f3 usando função de alta ordem
   Esta função é didática, pois mostra o uso de função de alta ordem
   Contudo, o booleano não seria necessário se conseguíssemos fazer casamento 
   de padrão com a função parâmetro-}

--f4::Char->(Int->Int->Int)->[Int]->Int



 
--f4_aux::Bool->(Int->Int->Int)->[Int]->Int
 
 {- para lista de pelo menos um elemento -}
--f4::(Int->Int->Int)->[Int]->Int


{- soma ou subtrai elementos de lista com função de alta ordem -}
sumLsubL::(Int->Int->Int)->[Int]-> Int
sumLsubL x [] = 0
sumLsubL x (h:t) = x h (sumLsubL x t)



{- função map aplica uma função a cada elemento de uma lista -}
map2 :: (a -> b) -> [a] -> [b]
map2 x [] = []
map2 x (h:t) = x h : map x t 

{- função que converte caixa baixa para caixa  alta
   usar a função map para aplicar a uma String -}
   
--intervalo = ord ('a') - ord ('A')
--caixaBaixaAlta c = chr (ord c - intervalo)

