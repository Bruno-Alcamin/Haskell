module Aula4 where

--data Binario = Zero | Um

--data Pessoa = Fisica String Int | Juridica String

-- Os value constructors sao os valores
-- dos data constructors. Os value constructors
-- pode carregar campos
--TIPO UNIDADE  = () = Unity
teste:: () -> Int
teste x = 0
teste2:: Int -> ()
teste2 x = ()

data Sozinho -- value constructors undefined
-- todo tipo tem seu undefined
teste' :: Sozinho -> Int
teste' x = 0

foo:: () -> Sozinho -> Int
foo x y = 0
-- foo () undefined
-- foo undefined undefined

foo' ::[Sozinho] -> Int
foo' x = 0

somar:: Int -> Int -> Int
somar x y = x+y
-- let f somar 5
-- f 3

-- CURRYiNG: Tecnica que consiste em transformar uma chamda de funcao em uma 
-- sequencia de funcoes com menos parametros que a original

volume:: Double -> Double -> Double -> Double 
volume  a b c = a*b*c

--(\x -> 2*x) FUNÇÃO ANONIMA - LAMBDA
-- let dobro = \x -> 2 * x
-- no console (\x s f -> x * s * f) 1 2 3
-- let somaa = (\x y -> x + y ) 1
-- somaa 2

-- HIGH ORDER FUNCTION = É uma funcao que recebe via parametros funcoes e ou retornar funcoes

aplicar::(Int->Int)->Int
aplicar f = 1 + f 6

-- aplicar ((\x y -> z+y) 10)
-- = aplicar (\y -> 10+y)
-- = 1 + (\y -> 10 + y) 6
-- = 1 + 16
-- = 17

-- Retornando funcao

mult:: Int -> (Int -> Int)
mult x = (\y -> x*y)

--let f = mult 1
-- f 5

-- map (\x -> 2 * x ) [1,2,3,4,5]
-- map (2*) [1..5]
-- filter (\z -> length x == 5) ["ACSDS", "FATEC", "SANTOS", "ABC" ]
-- filter odd [1..10] filtra os impares
-- filter even [1..10] filtra os pares
-- filter (\x -> elem x "AEIOU") "FATEC"
-- filter (\x -> notElem x "AEIOU") "FATEC"

data Pessoa = Pessoa String Int deriving Show

maior::Pessoa -> Bool
maior (Pessoa _ idade) = idade >=18
--filter(\(Pessoa _ idade) -> idade >=18) [Pessoa "Gustavo" 12, Pessoa "Bruno" 23,Pessoa "Jessica" 32]
filtarMaiores::[Pessoa] -> [Pessoa]
filtarMaiores xs = filter maior xs
--let ps = [Pessoa "Gustavo" 12, Pessoa "Bruno" 23,Pessoa "Jessica" 32]
--filtarMaiores ps

{-
Exercicios:

A) Faca o tipo metragem com os valores constructors metro e kilometro
B) Faca um tipo medida que possua os campos Double e metragem
C) Faca a funcao converter que converte metros para quilometros e vice versa
D) Faca a funcao converterTodos que converte todos os elementos de uma lista de medida
E) Faca a funcao maior5 que filtra qlqr medida maior que 5 sem importrar a metragem
-}

data Metragem = Metro | Kilometro deriving Show
data Medida = Medida Double  Metragem deriving Show

converter::Medida -> Medida
converter (Medida x Kilometro) = Medida (x*1000) Metro
converter (Medida x Metro) = Medida (x/1000) Kilometro
converterTodos::[Medida] -> [Medida]
converterTodos xs = map converter xs

