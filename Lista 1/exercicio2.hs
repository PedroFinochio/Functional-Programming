{- Localize, explique e corrija o erro na função que deve calcular o fatorial de um número, como se segue:

fat::Int->Int
fat x = x * fat(x-1)

-}

--A função não possui caso base, o que gera um stack overflow. 