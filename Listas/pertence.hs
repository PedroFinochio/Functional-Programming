--Função que retorna true caso o elemente pertença a lista ou false caso não pertença

pertence::Int->[Int]->Bool
pertence _ [] = False 
pertence p (a:x) 
    | p == a = True
    | otherwise = pertence p x