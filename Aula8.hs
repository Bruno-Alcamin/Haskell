module Aula8 where
import Control.Monad
-- neste caso a transformacao natural
-- abaixo pega um int e coloca sob acao de um funtor

transFnat::Int -> Maybe Int 
transFnat x = Just x


f::Int->[Int]
f x = [x+1]

-- setinha chama-se kleisli  arrow
--join( fmap f (f(3))) ou  (f <=< f) 7


-- Monad eh um monoide da categoria dos endofuntores (Objetos: transformacoes naturais)

-- se uma monad eh um monoide é um monoide
--mempty = return 
-- mappend  = <=<

-- kleisli serve para composicao de transformacoes naturais
-- e o bind (>>=) serce para aplicacao de trans naturais em um valor monadico (m b)
-- o (>>=) tem a mesma funcao do ($), porem o ($) pode ser omitido ja o bind nao
-- [4] >>= f
--f 5 >>= f

-- Exercicio COLA PARA P2

--a)[7]>>= return = [7]
--b)just 8 >>= \x -> just(x-2) >>= \y -> just(x*y) = just 48
--c)just 4 >>= \x ->nothing = nothing
--d)nothing >>=\x-> just(x+1) = nothing
--e) [4]>>= \_-> [2] = [2]


-- >> ignora o primerio paramento tipo:
-- [4] >> [2] = 2 q eh igual [4]>>= \_-> [2] = [2]


-- instance Monad Maybe where
--  return = Just
--  (Just x) >>= f = f x
--  Nothing >>= f = Nothing

expr :: Maybe Int
expr = Just 5 >>= \x -> Just (x+1) >>= \y -> Just(2+x) >>= \z -> Just (x+y+z) 

expr' :: Maybe Int
expr' = do
      x <- Just 5
      y <- Just (x+1)
      z <- Just (2+x)
      return (x+y+z)
      
-- data () = ()      
main :: IO ()
main = putStrLn "Ola mundo"



