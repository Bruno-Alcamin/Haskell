module Aula6 where


-- dataConstructions = valueConstructions  campos
--data Tipo = ValueC1 Char | ValueC2 Char Char deriving Show

-- pattern macth campo
-- valeuC1 x
-- valeuC2 u z
data Bolsa a = Bolso a | Necessaire a a 
-- a = um type parameter 

data Item = Batom | Espelho | Celular | Chave deriving (Eq,Show) -- com Eq ele pode comparar itens
-- bolso tipo de dado
-- Bolso Espelho
-- Necessaire 3 1

-- kind -> mostra a estrutura para operação para pegar 

-- Faca uma funcao trocar, que troque as posicoes de dentro da necessaire
-- para o bolso nao acontece nada

troca:: Bolsa Item -> Bolsa Item
troca (Necessaire x y) = Necessaire y x
troca (Bolso x) = Bolso x

--Eq = eh um type class
--logo, para cada tipo do haskell
-- vc deve criar uma instancia para 
-- definir o comportamento desejado
-- (Eq a) => restringe aos tipos que sejam comparaveis
instance (Eq a) => Eq (Bolsa a) where
    (Bolso x) == (Bolso y) = x == y
    (Necessaire a b) == (Necessaire c d) = ((a == c) && (b == d)) || ((a == d) && (b == c))
    _ == _ = False
    
instance (Show a) => Show  (Bolsa a) where
    show (Bolso x) = "Uma linda Bolsa"++ show x
    show (Necessaire x y) = "Uma linda Bolsa"++ show x ++" - "++ show y
    
-- TypeClass    
class (Numero a) where
    numero :: a -> Int
    
instance Numero Item where
    numero Batom = 1
    numero Espelho = 132
    numero Celular = 123
    

