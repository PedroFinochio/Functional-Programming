--Implemente em Haskell a função or-exclusivo

or_exclusivo::Bool->Bool->Bool
or_exclusivo a b = (a || b) && (not(a && b))