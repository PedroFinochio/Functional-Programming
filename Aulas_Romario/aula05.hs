{- Tipos em haskell

Fortemente tipada: o compilador impede operações entre tipos incompatíveis 
Tipagem estática: todos os tipos são verificados em tempo de compilação
Inferencia de tipos: o compilador deduz tipos sem necessidade de anotação explícita 
Polimorfismo paramétrico: funções genéricas funcionam com múltiplos tipos. Ex: length::[a] -> Int
Classes de tipos: um sistema que define conjuntos de operações que certos tipos devem implementar 
Imutabilidade: os valores não mudam, toda atribuição cria um novo valor

Por que declarar os tipos, se o próprio compilador infere ? 
    Clareza: documentando o que a função fez
    Segurança: evitando inferencias inesperadas
    Controle: restringindo a generalização
    Boas práticas: torna o código mais previsível

-}

{- Escreva o tipo de cada função abaixo: 
buscarLetrasCaixaAlta lista = [ x | x <- lista, elem x ['A'..'Z']] -> buscarLetrasCaixaAlta::[Char]->[Char]
circunferencia r = 2 * pi * r -> circunferencia::Float->Float
fatorial n = product [1..n] -> fatorial::Int->Int

-}
