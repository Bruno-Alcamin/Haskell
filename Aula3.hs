module Aula3 where


-- ericshortcut@gmail.com
teste:: String -> String
teste(x:xs) = xs
testepula(x:_:xs) = xs --ignora a segunda letra


teste1nulo(x:y:[]) = x -- ate duas letras
testet _ = "erro ..."

-- Exercicico: cria uma funcao que troque a segunda pela quarta letra e a primeira pela terceira
ex1:: String -> String
ex1 (a:b:c:d:xs) = [c]++[d]++[a]++[b]++xs
-- nomeando campos 
data Pessoa = Fisica String Int | 
                Juridica String deriving Show
--curring


--Fisica nome idade eh um pattern matching que encaixa no tipo declarado. A variavel nome eh uma string e a variavel idade eh um int
aniversario:: Pessoa -> Pessoa
aniversario (Fisica nome idade) = Fisica nome (idade+1)
aniversario (Juridica nomeF) = Juridica nomeF

-- Exercicico: faca a funcao fusao que concatene os campos nome e some os campos idade. A funcao deve funcionar para os dois values constructors

fusao::(Pessoa,Pessoa)->Pessoa
fusao (Fisica nome2 idade2, Fisica nome1 idade1) = Fisica (nome1++nome2) (idade1+idade2)
fusao (Juridica nome3,Juridica nome4) = Juridica (nome3++nome4)

--Record Syntax
data Pessoa1 = Fisica1 {pfNome::String, pfIdade:: Int }| 
                Juridica1 {pjNome :: String} deriving Show
                
somarIdade :: (Pessoa1,Pessoa1) -> Int
somarIdade (Fisica1 _ i,Fisica1 _ z) = i+z
somarIdade (_,_) = 0

somarIdade' :: Pessoa1 -> Pessoa1 -> Int
somarIdade' x y = pfIdade x + pfIdade y

--OBs eh possivel criar um value constructors com o mesmo nome de data contructors
data Sozinho = Sozinho {a::String, b::Char}

--Exercicico: faca o tipo ponto com dois campos double representando as posicoes x e y na tela. 
-- faca as funcoes moverX move um ponto dx unidades na direcao x
-- a variavel dx eh um parametro
-- mover y  move um ponto dy unidades na direcao y 
--mag extrai distancia da origem de um ponto

data Ponto = Posicao {posX :: Double, posY :: Double} deriving Show
moveX:: Ponto ->  Double -> Ponto
moveX k z1 = Posicao (posX k+z1) (posY k)

moveY:: Ponto ->  Double -> Ponto
moveY k z2 = Posicao (posX k) (posY k+z2)

mag:: Ponto -> Double
mag k =  sqrt(posX k ^2 + posY k ^2)

