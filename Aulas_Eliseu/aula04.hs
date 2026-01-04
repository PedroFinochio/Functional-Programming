import Data.Char (isDigit, ord, chr)

{- 01 função que separa [(Int,Char)] em ([Int],[Char]) -}
myUnzip :: [(Int,Char)]->([Int],[Char])
myUnzip x = (listaInt x, listaChar x)

listaInt::[(Int,Char)]->[Int]
listaInt [] = []
listaInt ((a,b):x) = a : listaInt x 

listaChar::[(Int,Char)]->[Char]
listaChar [] = []
listaChar ((a,b):x) = b : listaChar x 

{- 02 versão em uma única função -}
myUnzipU::[(Int,Char)]->([Int],[Char])
myUnzipU [] = ([],[])
myUnzipU ((a,b):x) = (a: fst(myUnzipU x), b: snd(myUnzipU x))

{- 03 função que junta duas listas em lista de duplas -}
myZip::[Bool]->[Char]->[(Bool,Char)]  
myZip [] [] = []
myZip (h:t) (h2:t2) = (h,h2) : myZip t t2

{- 04 função que recebe [Char] e retorna [(Bool,Char)] 
   True se Char for alfanumérico e False, caso contrário -}
setAlfa::String->[(Bool,Char)] 
setAlfa [] = []
setAlfa (h:t)
    | ehAlfanumerico h = (True, h) : setAlfa t
    | otherwise = (False, h) : setAlfa t

ehAlfanumerico::Char->Bool
ehAlfanumerico h
    | ('A' <= h && h <= 'Z') || ('a' <= h && h <= 'z') || ('0' <= h && h <= '9') = True
    | otherwise = False 

{- 05 função que recebe [(Bool, Char)] e filtra alfanuméricos -}
filtraAlfa:: [(Bool,Char)]->String
filtraAlfa [] = []
filtraAlfa ((a,b):x)
    | ehAlfanumerico b = b : filtraAlfa x
    | otherwise = filtraAlfa x 

{- 06 função transforma String de alfa em Int -}
alfaToInt::String->[Int]
alfaToInt [] = []
alfaToInt (h:t)
    | isDigit h = ord h : alfaToInt t 
    | otherwise = alfaToInt t 

{-- 07 função que gera tabela ascii -}
geraASCII::Int->[(Int,Char)]
geraASCII x 
    | x <= 127 = (x, chr x) : geraASCII (x+1)
    | otherwise = []




