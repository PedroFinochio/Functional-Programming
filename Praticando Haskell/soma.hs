--Calcular a soma entre 2 números incluindo e excluindo os limites

soma_com_limites::Int->Int->Int
soma_com_limites n1 n2
    | n1 > n2 = 0
    | otherwise = n1 + soma_com_limites(n1 + 1) n2

soma_sem_limites::Int->Int->Int
soma_sem_limites n1 n2 
    | n1 > n2 = 0
    | otherwise = (n1 + 1) + soma_sem_limites (n1 + 1) (n2 - 1) 
