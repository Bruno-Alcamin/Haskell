-- 1 faca um tipo de estrutura que guarde dados de um aluno (curso e nome)

data Aluno = Dados {curso:: String,nome:: String}  deriving Show

guardaAluno:: String -> String -> Aluno
guardaAluno a b = Dados a b

-- 2 Usando o exemplo anterior registre um aluno de SI/ads por meio da função a x = dados "SI" x)

registraSI::String -> Aluno
registraSI x = guardaAluno "SI" x

registraADS::String -> Aluno
registraADS y = guardaAluno "ADS" y