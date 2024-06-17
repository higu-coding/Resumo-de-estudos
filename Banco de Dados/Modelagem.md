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

E para remover uma coluna, utiliza o código abaixo:

	ALTER TABLE "nome da tabela"
	DROP COLUMN "nome da coluna";