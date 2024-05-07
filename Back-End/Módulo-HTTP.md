"# Resumo-de-estudos" 

## **Módulo HTTP**

*O módulo HTTP do Node.js é um módulo nativo que permite a criação de aplicativos da Web que interagem com o protocolo HTTP

*Ele fornece uma interface para criar servidores HTTP e manipular solicitações e respostas HTTP,
retornando dados em vários formatos, como HTML, JSON, XML, entre outros

## **Como implementar**

1. Primeiro criar um servidor com .createServer()

2. Definir que esse servidor vai escutar a porta 3000 com o mmétodo .listen()

3. Implementar para que toda requisitação do método GET retorne um status code 200 através do .writeHead()

4. Enviar a resposta para o cliente com o corpo da mensagem com o método .end()

## **Tratar recurso não encontrado**

Caso não entre em nenhum IF relacionado a nossas rotas, precisamos lidar com esse erro

* O código para o tratamento do erro está no repositório "Back-End"