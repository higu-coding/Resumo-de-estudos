# Texto

* character varying (Cadeia de caracteres variável)

* character (Cadeia de caracteres fixa)

* text (texo de tamanho variavel)

# Numero

* integer (numero inteiro)

---------------------------------------------------------------------------------------------------------
# Chaves

Primary Key (PK)

* Uma Primary Key é um atributo que identifica exclusivamente cada registro em uma tabela.
Essa chave é usada para garantir a unicidade dos dados e permite o rápido acesso e pesquisa de registros específicos. A Primary Key é definida durante a criação da tabela e é composta por um valor único e não nulo para cada registro

Foreign Key (FK)

* Uma Foreign Key é um atributo que estabelece uma relação entre duas tabelas. Essa chave é baseada em uma PK de outra tabela e é usada para criar uma conexãoo entre elas. A FK define uma restrição, garantindo que os valores na coluna relacionada existam na tabela referenciada, facilitando a recuperação de dados relacionados por meio de consultas.

---------------------------------------------------------------------------------------------------------
# Constraints

Constraints (restrições)  em um banco de dados relacional são regras aplicadas às tabelas para garantir a integridade e consistência dos dados armmazenados. Essas restrições ajudam a impor regras de negocio e a evitar inconsistências  ou dados inválidos no banco de dados. 

* Ex: Primary Key e Foreign Key

Unique Constraint 

* Garante que os valores em uma coluna (ou conjunto de colunas) sejam únicos em uma tabela, permitindo apenas um unico valor ou valores nulos.

Check Constraint 

* Permite definir condições ou expressões lógicas para restringir os valores permitidos em uma coluna. Isso ajuda a garantir que apenas dados válidos sejam inseridos na tabela.

Not Null Constraint

* Impede a inserção de valores nulos em uma coluna específica, garantindo que ela sempre possua um valor válido.

---------------------------------------------------------------------------------------------------------
# Criei uma conta na AWS

Hoje, dia 30/05 estava corrido, então nao fiz tanta coisa.

---------------------------------------------------------------------------------------------------------
# Criei um banco de dados usando o azure studio e o DB da AWS

Para criar um banco de dados usa o comando

* CREATE DATABASE "nome do banco de dados";

---------------------------------------------------------------------------------------------------------
# Criar tabela

Para criar uma tabela usa o comando

* CREATE TABLE "nome da tabela" (
	coluna1 "tipo_de_dado",
	coluna2 "tipo_de_dado",
	coluna3 "tipo_de_dado",
)

---------------------------------------------------------------------------------------------------------
# Alter Table

Para adicionar uma nova coluna a tabela utiliza o código abaixo: 

	ALTER TABLE "nome da tabela"
	ADD COLUMN "nome da coluna" "tipo_de_dado";

Para remover uma coluna, utiliza o código abaixo:

	ALTER TABLE "nome da tabela"
	DROP COLUMN "nome da coluna";

Alterar o tipo de dado de uma coluna:

	ALTER TABLE "nome da tabela"
	ALTER COLUMN "nome da coluna" TYPE "novo tipo de dado";

Renomear uma coluna:

	ALTER TABLE "nome da tabela"
	RENAME COLUMN "nome da coluna antiga" TO "nome da coluna nova";

Adicionar uma chave primária a uma tabela: 

	ALTER TABLE "nome da tabela"
	ADD CONSTRAINT "nome da chave primaria" PRIMARY KEY ("nome da coluna");	

Adicionar uma chave estrangeira a uma tabela:

	ALTER TABLE "nome da tabela"
	ADD CONSTRAINT "nome da chave estrangeira" FOREIGN KEY ("nome da coluna")
	REFERENCES "nome da tabela referenciada" ("nome da coluna")

---------------------------------------------------------------------------------------------------------
# Insert

Data Manipulation Language - DML

Para inserir dados em uma tabela, usa o comando INSERT seguido de VALUE:

	"INSERT INTO 'nome da tabela'( "ORDEM DOS DADOS" )"
	VALUES ("dados seguindo a ordem do insert")

* Por exemplo, usando dados fictícios:

	insert into alunos (id, nome, email)
	values (3, josenildo fernando, josenildofernando@hotmail.com)

---------------------------------------------------------------------------------------------------------
# Select

O comando SELECT é usado para consultar dados de uma ou mais tabelas em um banco de dados. É uma das instruções mais comumente usadas e poderosas na linguagem SQL.

* Sintaxe:

	SELECT coluna1, coluna2, ...
	FROM tabela
	WHERE condição;

---------------------------------------------------------------------------------------------------------
# Update

O comando UPDATE é utilizado para modificar os valores de uma ou mais colunas em uma tabela. Ele permite atualizar registros existentes com novos valores de acordo com determinadas condições.

* Sintaxe: 
	
	UPDATE tabela
	SET coluna1 = valor1, coluna2 = valor2, ...
	WHERE condição

---------------------------------------------------------------------------------------------------------
# Delete

O comando DELETE remove um ou mais registros de uma tabela. Um subconjunto pode ser definido para exclusão usando uma condição, caso contrário, todos os registros serão removidos.

* Sintaxe: 
	
	DELETE FROM tabela
	WHERE condição

---------------------------------------------------------------------------------------------------------
# Transações

O BEGIN TRANSACTION indica onde ela deve começar, então os comando SQL a seguir estarão dentro desta transação.

O COMMIT TRANSACTION indica o fim normal da transação, o que tiver de comando depois já não fará parte desta transação. Neste momento tudo o que foi manipulado passa fazer parte do banco de dados normalmente e operações diversas passam enxergar o que foi feito.

O ROLLBACK TRANSACTION reverte uma transação explícita ou implícita para o início da transação ou para um ponto de salvamento dentro da transação. Você pode usar ROLLBACK TRANSACTION para apagar todas as modificações de dados feitas desde o início da transação ou para um ponto de salvamento. Ela também libera recursos mantidos pela transação.

Ao contrário do que muita gente acredita rollback no contexto de banco de dados não significa reverter e sim voltar ao estado original. Um processo de reversão seria de complicadíssimo à impossível. Um processo de descarte é simples e pode ser atômico.