-- Recursividade e o mecanismo de programacao no qual uma definicao de funcao refere-se a propria funcao

-- Ex: faça uma função soma, que dado um valor n, soma todos os valores que vai de n até 0
soma::Int->Int
soma 0 = 0
soma x = x + soma (x-1)

-- Implemente uma função somaLista que soma todos os valores de uma lista 
somaLista::[Int]->Int
somaLista [] = 0
somaLista (h:t) = h + somaLista t 

-- Implemente uma função tamanhoLista que indica o tamanho de uma lista 
tamanhoLista::[Int]->Int
tamanhoLista [] = 0 
tamanhoLista (h:t) = 1 + tamanhoLista t  