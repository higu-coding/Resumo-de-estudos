# Resumo-de-estudos

Hoje, dia 09/05/2024, fiz um exercicio sobre API.

Fiz um CRUD de usuarios, porém, sem a manipulação de dados reais.

O exercicio está no repositorio "Iniciando-Estudos-em-Back-End" no GitHub.


-----------------------------------------------------------------------------------
Hoje, dia 10/05/2024, fiz um exercicio sobre API.

Fiz um CRUD de usuarios, porém, simulando um banco de dados, usando como exemplo, uma lista de alunos

Anotações:

	* No GET, para que seja retornado um JSON valido, usa-se o código entre { }

	~~~
		res.status(200).send({"variavel" :"variavel"})
	~~~
	
	* No GET, para retornar um valor especifico, o código abaixo, é uma função de callback, uma 	função anônima, que é passada como argumento para o método find(). Onde, "x" representa cada elemento do array alunos que está sendo percorrido. A expressão x.id == req.params.id compara o atributo id de cada aluno (x.id) com o parâmetro de ID fornecido pela solicitação HTTP (req.params.id). O operador == verifica se são iguais.

	~~~
		alunos.find(x => x.id == req.params.id)
	~~~

	* Nos metodos PUT e DELETE, também foi o usado o mesmo código acima.

O exercicio está no repositorio "Iniciando-Estudos-em-Back-End" no GitHub.

-----------------------------------------------------------------------------------
Hoje, dia 10/05/2024 novamente, iniciei um novo exercicio parecido com o anterior.

Fiz um CRUD de veiculos, mas ainda está incompleto, terminarei dia 11/05/2024