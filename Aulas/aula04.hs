{- objetivo: trabalhar tipos distintos entre listas e tuplas -}

import Data.Char

------------------------------------------------------
--Função que separa [(Int,Char)] em ([Int],[Char])

listOfInt::[(Int,Char)]->[Int]
listOfInt [] = []
listOfInt (a:x) = fst a : listOfInt x 

listOfChar::[(Int,Char)]->[Char]
listOfChar [] = []
listOfChar (a:x) = snd a : listOfChar x

myUnzip::[(Int,Char)]->([Int],[Char])
myUnzip [] = ([],[])
myUnzip (a:x) = (listOfInt(a:x), listOfChar(a:x))

{- 02 versão em uma única função -}
--myUnzipU :: [(Int,Char)]->([Int],[Char])

------------------------------------------------------------
--Função que junta duas listas em lista de duplas 
myZip::[Bool]->[Char]->[(Bool,Char)]  
myZip [] [] = ([])
myZip (a:x) (a2:x2) =  (a,a2) : myZip x x2 

--Função que recebe [Char] e retorna [(Bool,Char)] True se Char for alfanumérico e False, caso contrário 
setAlfa::String->[(Bool,Char)] 
setAlfa (a:x) = 


   
{- 05 função que recebe [(Bool, Char)] e filtra alfanuméricos -}
--filtraAlfa:: [(Bool,Char)] -> String

{- 06 função transforma String de alfa em Int -}
--alfaToInt::String -> [Int]


{-- 07 função que gera tabela ascii -}
--geraASCII::Int->[(Int,Char)]


