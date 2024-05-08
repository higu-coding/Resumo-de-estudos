"# Resumo-de-estudos" 

## Introdução ao Express.js

* Para poder instalá-lo, usa-se o comando "npm install express" assim vai instalar temporariamente, se quiser salvar na lista de dependências, basta colocar "--save" no final do comando.

Para importar o Express para o arquivo:

~~~
	* const express = require('express')
	  const app = express( )
~~~

Para trabalhar com arquivos JSON:

~~~
	* app.use(express.json( ))
~~~	

	* Essa função do express, abtrai a complexidade de analisar o body de uma requisição e passar seu conteúdo para um objeto Javascript

	* Para isso o Content-Type da requisição deve ser "JSON", então o objeto req.body é preenchido com as informações analisadas.

CRIANDO AS APIs

Com EXPRESS em vez de ficar rodando varios IFs, basta usar o "app" onde está rodando o EXPRESS, mais o método, por ex, ".get", em seguida ("nome da rota", (require ou requisição, response ou resposta) => {
     console.log("Hello world")
 })

* Ficaria mais ou menos assim:

~~~
    app.get('/users', (req, res) => {
    console.log('mensagem')
    res.status(200).send(" mensagem ")
}) 
~~~


* Para iniciar o servidor:

~~~
    app.listen(3000, ( ) => { 
    console.log(" mensagem ao iniciar o servidor ")
}) 
~~~


-----------------------------------------------------------------------------------

No express, tem como colocar queries na rota, ficaria assim

~~~ 
    app.get('/users', (req, res) => {
    console.log(req.query)
    console.log('mensagem')
    res.status(200).send(" mensagem ")
}) 
~~~


-----------------------------------------------------------------------------------
É possivel pegar apenas um dado especifico com os parametros:

~~~
    app.get('/users/" :id "/" :idade " ', (req, res) => {
    console.log(req.params.id)
    console.log(req.params.idade)
    console.log(" mensagem ")
    res.status(200).send(" mensagem ")
})
~~~
-----------------------------------------------------------------------------------
Usando o método post, da pra usar o body para acessar os dados e devolver ao usuario

~~~
    app.post('/users', (req, res) => {
    console.log(req.body)
    console.log(" mensagem ")
    res.status(200).send(req.body) // o ideal é sempre retornar JSON
})
~~~




