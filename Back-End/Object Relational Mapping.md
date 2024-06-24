# ORM 

É uma técnica utilizada na programação para mapear os objetos que utilizamos no código em estruturas de dados para um banco de dados. 

Essa técnica se popularizou pelo fato de muitos desenvolvedores não se sentirem a vontade  em lidar diretamente com a escrita de código SQL e pelos benefícios de produtividade que essa abordagem oferece. 

Isso significa que podemos trabalhar com essas entidades como se fossem objetos comuns, chamando métodos e acessando propriedades ao invés de escrever consultas SQL brutas. 

--------------------------------------------------------------------------------------------------------------
# Sequelize

O Sequelize é um ORM moderno para Node.js que funciona a partir de promises facilitam a interação com bancos de dados relacionais, como MySQL, PostgreSQL, SQLite e outros.

--------------------------------------------------------------------------------------------------------------
# Termos Importantes

Connection String: Uma "connection string" é uma cadeia de caracteres que contém informações necessárias para estabelecer uma conexão com um banco de dados.

Pool de Conexões (Connection Pool): Um pool de conexões é uma coleção de conexões de banco de dados predefinidas e reutilizáveis.

Modelos (Models): Os modelos no Sequelize representam as tabelas do banco de dados como objetos JavaScript.

Migrações (Migrations): As migrações são scripts que permitem controlar e automatizar as alterações no esquema do banco de dados, como criar tabelas ou adicionar/remover colunas.

* Assim como utilizamos ferramentas de controle de versão, como o Git, para gerenciar nossos códigos, podemos utilizar migrations para monitorar as alterações no banco de dados.

* O principal conceito de uma migration é que podemos mudar o banco de dados de um estado para o outro. Os arquivos de migração controlam essa transição, descrevendo como chegar ao novo estado e revertendo ao estado anterior se necessário. 

* Uma migração no Sequelize é um arquivo JavaScript que contém duas funções: ‘up’ e ‘down’.

* Essas funções especificam como aplicar e reverter respectivamente uma mudança no banco de dados.

* Você deve  escrever manualmente o código nessas funções, e a própria CLI do Sequelize as invoca automaticamente quando você executa comandos de migração.

* Em alguns casos precisamos inserir alguns dados nas tabelas por padrão. 

* As sementes são uma forma para adicionar esses dados de forma consistente e facilmente reproduzível prontos para uso.

* Um arquivo de seed segue o mesmo padrão das migrations, uma função “up” para adicionar os registros e “down” para revertê-los se necessário.

Associações (Associations): As associações definem os relacionamentos entre modelos. 

* Uma associação representa o relacionamento entre duas entidades. Para implementar uma associação no Sequelize utilizamos os métodos:

* Associação 1 para 1:

*  belongsTo - Um registro de uma tabela está associado a apenas um registro em outra tabela.
Associação 1 para N:

* hasMany - Um registro de um modelo está associado a vários registros em outro modelo.
* Associação N para N:

* belongsToMany - Um relacionamento muitos-para-muitos entre dois modelos. Isso cria uma tabela de junção que mapeia os registros de um modelo para os registros de outro.

Método create(): Usado para criar novos registros no banco de dados.

Método findAll(): Usado para consultar registros no banco de dados com base em critérios específicos.

Método update() e destroy(): Usados para atualizar e excluir registros no banco de dados.

