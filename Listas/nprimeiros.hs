--Função que obtem os n primeiros termos de uma lista

nprimeiros::Int->[Int]->[Int]
nprimeiros 0 _ = []
nprimeiros _ [] = []
nprimeiros n (a:x) = a: nprimeiros(n - 1) x 