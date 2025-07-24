{- Compare as seguintes implementações de uma função que verifica a existência de um elemento 

procuraElemento :: Int -> [Int] -> Bool
procuraElemento n (x:xs) = n == x || procuraElemento n xs

procuraElemento2 :: Int -> [Int] -> Bool
procuraElemento2 n (x:xs) = procuraElemento2 n xs || n == x
-}

{- Ambas as implementações estão corretas para o problema em questão? Se sim, qual a
diferença existente na computação das duas funções? 
R: A segunda implementação está incorreta, não possui caso base e retorna non-exhaustive patterns in function procuraElemento2 
-}

{- (b) Qual implementação é mais eficiente?
R: A primeira implementação é mais eficiente, visto que já cobre o caso base. 
-}

procuraElemento2 :: Int -> [Int] -> Bool
procuraElemento2 _ [] = False
procuraElemento2 n (x:xs) = procuraElemento2 n xs || n == x

procuraElemento :: Int -> [Int] -> Bool
procuraElemento n (x:xs) = n == x || procuraElemento n xs



