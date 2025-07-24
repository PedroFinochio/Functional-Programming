func::String->(Char,Int)

repete::Char->String->Int
repete _ [] = 0
repete c (h:t)
    | c == h = 1 + repete c t 
    | otherwise = repete c t 


  

