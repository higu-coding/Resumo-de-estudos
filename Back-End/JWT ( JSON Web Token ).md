# JWT (JSON Web Token)

JWT é um formato compacto e seguro para token de autenticação. Ele é frequentemente usado para transmitir informações entre partes no formato JSON.

Um JWT consiste em três partes: o cabeçalho (header), a carga útil (payload) e a assinatura (signature). 

A estrutura básica é: header.payload.signature

Header: O cabeçalho é codificado em JSON e inclui informações como o tipo (typ) e o algoritmo (alg) usado para a assinatura.

Payload: Contém as informações que você deseja transmitir. Há também algumas "claims" padrão que podem ser usadas para definir informações como o identificador do usuário, tempo de expiração, etc. As "claims" são divididas em três tipos: registradas, públicas e privadas.

Signature: A assinatura é usada para verificar que a mensagem não foi alterada durante a transmissão e que ela vem de uma fonte confiável. A assinatura é gerada usando header e payload codificados em Base64 e uma chave secreta, usando o algoritmo especificado no header. Isso garante que o token não tenha sido adulterado.

--------------------------------------------------------------------------------------------------------------
O JWT suporta vários algoritmos de assinatura, como HMAC com SHA-256, RSA e ECDSA. A escolha do algoritmo de assinatura depende dos requisitos de segurança e da infraestrutura disponível.

Após gerado, o JWT pode ser enviado no cabeçalho HTTP (“Authorization”), no corpo da requisição ou em cookies. Uma vez que o servidor recebe o JWT, ele pode validar a assinatura e acessar as informações contidas na payload.

JWTs são seguros se implementados corretamente, mas é fundamental proteger contra alguns ataques, como ataques de repetição e ataques de injetar valores maliciosos nas "claims".

Tempo de Vida (Lifetime): JWTs podem ser configurados com um tempo de vida limitado, após o qual eles se tornam inválidos. Isso é útil para mitigar o risco de ataques.

