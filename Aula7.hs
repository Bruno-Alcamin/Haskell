module Aula7 where

data Humano = Bia | Pedro deriving Show

data Vampiro a = Vampiro a deriving Show

instance Functor Vampiro where
    fmap f (Vampiro x) = Vampiro (f x)

amor:: Humano -> Humano
amor Bia = Pedro
amor Pedro = Bia



data Valido a = Sim a | Nao 
data Maybe a = Just a | Nothing

instance (Show a) => Show (Valido a) where
    show (Sim x ) = show x
    show Nao = "Não dividiras por zero!"


safeDiv :: Double -> Double -> Valido Double
safeDiv x 0 = Nao
safeDiv x y = Sim(x/y)


(/?):: Double -> Double -> Valido Double
(/?) x 0 = Nothing
(/?) x y = Just (x/y)


--- FAZER EXERCICIO 1 DO CAPITULO DA ARVORE ....

toList :: a -> [a]
toList x = [x]
