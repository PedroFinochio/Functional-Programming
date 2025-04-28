{-Assunto: Listas
  Os conceitos introdutórios sobre listas foram apresentados em sala.
  Agora, considerando os casos mais simples, com apenas listas de inteiros,
  implemente as funções abaixo, considerando os operadores ++ e :
    ++ (concatena listas)
     : (insere um elemento na lista)
-}
     
--Função que soma os elementos de uma lista
sumList::[Int]->Int
sumList [] = 0
sumList (a:x) = a + sumList x

--Função que localiza um elemento na lista
searchList::Int->[Int]->Bool
searchList _ [] = False
searchList e (a:x)
    | e == a = True
    | otherwise = searchList e x 

--Função que remove todas as ocorrencias de y em uma lista


--Função que informa o tamanho de uma lista
lenghtList::[Int]->Int
lenghtList [] = 0
lenghtList (a:x) = 1 + lenghtList x

--Função que conta a ocorrencia de um Int em [Int]
contList::Int->[Int]->Int
contList _ [] = 0
contList c (a:x)
    | c == a = 1 + contList c x
    | otherwise = contList c x

--Função que inverte uma lista
reverseList:: [Int]->[Int]
reverseList [] = []
reverseList (a:x) = reverseList x ++ [a] 

--Função que inverte elementos das listas internas 

--Função myHead que recebe uma lista x e retorna a cabeça de x
myHead::[Int]->Int
myHead (a:x) = a

--Função myTail que recebe uma lista x e retorna a lista x sem a cabeça
myTail::[Int]->[Int]
myTail (a:x) = (x)

--Função myLast que recebe uma lista x e retorna o último elemento de x
myLast::[Int]->Int
myLast [a] = a
myLast (a:x) = myLast (x)

--Função myPenultimate que recebe uma lista x e retorna o penúltimo elemento de x
myPenultimate::[Int]->Int
myPenultimate [a,b] = a
myPenultimate (a:x) = myPenultimate x 

--Função myInit que recebe uma lista x e retorna a lista x sem o último elemento
myInit::[Int]->[Int]
myInit [a] = [] 
myInit (a:x) = a : myInit x 






