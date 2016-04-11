module Aula2 where
--criando um tipo
-- Lado escquerdo = Data Contructor
-- lado direito = value Contructor
data Dia = Segunda  | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving Show
-- para perguntar o tipo de um elemento usar :t
--Encontra um padrão especifico na(s) entrada (s) da função. age de acordo com os values contructors do tipo de entrada
diaDeBalada:: Dia -> Bool
diaDeBalada Sexta = True
diaDeBalada Sabado = True
diaDeBalada _ = False

numDia :: Dia -> Int
numDia Domingo = 1
numDia Segunda = 2
numDia Terca = 3
numDia Quarta = 4
numDia Quinta = 5
numDia Sexta = 6
numDia Sabado = 7

-- faca uma funcao salario que implemente a seguinte regra de negocio 
-- -todo trabalhador aos domingos ganha o dobro do salario
-- Aos sabados 75%
-- qlqr outro dia nao ha um acrescimo 
-- A funcao deve receber um dia e um valor bruto do salario por hora a ser calculado
salario:: Dia -> Double -> Double
salario Domingo x = x*2 
salario Sabado x = x*1.75
salario _ x = x

-- faca o tipo day que possua como value constructor os dias da semana em inglês
--faca as funcoes traduzirIP que traduz os dias em ingles para portugues e traduzirPI
--que traduz do portugues para o ingles

data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday deriving Show
traduzirIP:: Day -> Dia
traduzirIP Sunday = Domingo
traduzirIP Monday = Segunda
traduzirIP Tuesday = Terca
traduzirIP Wednesday = Quarta
traduzirIP Thursday = Quinta
traduzirIP Friday = Sexta
traduzirIP Saturday = Sabado

traduzirPI:: Dia -> Day

traduzirPI  Domingo = Sunday
traduzirPI  Segunda = Monday
traduzirPI  Terca = Tuesday
traduzirPI  Quarta = Wednesday
traduzirPI  Quinta = Thursday
traduzirPI  Sexta = Friday
traduzirPI  Sabado = Saturday

--tupla 

-- tuplas podem receber varios tipode de dados e são representadas por ()
mult::(Int,Int) -> Int
mult x = fst x * snd x

mult'::(Int,Int) -> Int
mult' (z,y) = z*y
{-
1) faca uma funcao que receba um interios 
e eh retorne o dobro da primiera coordenada de um tupla. o triplo na 
segunda e o quadruplo na terceira

2) faca o tipo pessoa que pode ser fisica e juridica, e o tipo de impostos 
que ser ISS, IRPF ou ICMS. faca uma funcao devePagar que recebe 
uma tupla de pessoas e impostos esta funcao deve informar se esta pessoa 
deve pagar ou nao este impostos
-}

retDTQ:: Int -> (Int,Int,Int)
retDTQ x = (x*2,x*3,x*4)

data Pessoa = Fisica | Juridica 
data Imposto = ICMS | IRPF | ISS 

devePagar::(Pessoa,Imposto) -> Bool

devePagar (Fisica,IRPF) = True
devePagar _ = False
devePagar (Juridica,ISS) = True
devePagar (Juridica,ICMS) = True


