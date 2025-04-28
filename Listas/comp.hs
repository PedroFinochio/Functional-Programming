--Função para calcular o comprimento de uma lista

comprimento::[Int]->Int
comprimento [] = 0
comprimento (a:x) = 1 + comprimento x

