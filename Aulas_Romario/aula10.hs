{- Classes de tipos: definem um conjunto de operações que um tipo precisa implementar para poder ser usado em certas funções.

    . Especificam operações obrigatórias que os tipos devem implementar
    . Restringem tipos que podem ser usados
    . Permitem polimorfismo ad-hoc, ou sobrecarga (mesma função para diferentes tipos)
    . Aumentam segurança e clareza no código

-}

-- Tipos algébricos: declaração criada usando data, que define um novo tipo formado por um conjunto de construtores

{- 1. Estamos criando um sistema para classificar medalhas em uma competição. Precisamos que o computador saiba que Ouro vale
mais que Prata, que vale mais que Bronze.

a. Crie o tipo de dado Medalha;
b. Crie uma função que recebe duas medalhas e devolve a maior;
c. Crie uma função que recebe duas medalhas e verifica se elas são iguais


-}

type TipoMedalha = String 

data Medalha = Bronze | Prata | Ouro deriving (Eq, Ord, Show)

maiorMedalha::Medalha->Medalha->Medalha 
maiorMedalha medalha1 medalha2 = max medalha1 medalha2

iguaisMedalhas::Medalha->Medalha->Bool 
iguaisMedalhas medalha1 medalha2 = medalha1 == medalha2

{- 2. Crie três apelidos de tipo (type) para String: chame-os de Nome, Email e Mensagem.

    a. Faça uma função chamada formatarEmail. Ela deve receber um Nome, um Email e uma Mensagem (nessa ordem) e retornar uma String.
    b. Regra: A assinatura da função (::) deve usar os seus tipos criados, e não String.
    c. Saída esperada: "Usuario: Joao <joao@email.com> diz: Olá!"

-}

type Nome = String 
type Email = String 
type Mensagem = String 

formatarEmail::Nome->Email->Mensagem->String 
formatarEmail nome email mensagem = "Usuario: " ++ nome ++ " " ++ "<" ++ email ++ ">" ++ " " ++ "diz: " ++ mensagem



