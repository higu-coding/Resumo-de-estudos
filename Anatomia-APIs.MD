"# Resumo-de-estudos" 

## **Anatomia das APIs**

CRUD Rest

C = Create (Criar)
R = Read (Ler)
U = Update (Atualizar)
D = Delete (Deletar)

-----------------------------------------------------------------------------------

Métodos HTTP

GET = O método GET solicita a representação de um recurso específico. Requisições utilizando o método GET devem retornar apenas dados.

POST = O método POST é utilizado para submeter uma entidade a um recurso específico, frequentemente causando uma mudança no estado do recurso ou efeitos colaterais no servidor.

PUT = O método PUT substitui todas as atuais representações do recurso de destino pela carga de dados da requisição.
 
DELETE = O método DELETE remove um recurso específico.

## **Referências**

https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Methods

-----------------------------------------------------------------------------------

O corpo de uma requisição

Request Line

Metodo |    URL        | Protocolo  |
  GET  / api / authors / HTTPS / 1.1

Request Header

Headers são metadados enviados na solicitação para fornecer informações sobre a solicitação. Cada cabeçalho é especificado com um nome, dois pontos e, em seguida pelo valor desse cabeçalho.

Request Body

É onde colocamos as informações adicionais que vamos enviar para o servidor.

* As requisições GET não suportam body, essas não devem precisar enviar estruturas complexas de dados para o servidor.