#language: pt
Funcionalidade: Acessar Sistema
Como usuário
Para que eu possa fazer uso da plataforma
Eu quero realizar o acesso ao sistema

Cenário: Acesso ao sistema - Usuário regular
Dado que estou na página de login
Quando preencho o campo Email com "cesar-kenzo@usp.br"
Quando preencho o campo Senha com "testesenha"
E clico em Acessar
Então deverei ser redirecionado a página Inicial

Cenário: Acesso ao sistema - Usuário não cadastrado
Dado que estou na página de login
Quando preencho o campo "Email" com "ceeesar-kenzo@usp.br"
Quando preencho o campo "Senha" com "testesenha"
E clico em Acessar
Então deverei ver a mensagem de erro "Usuário não cadastrado!" na tela de login

Cenário: Acesso ao sistema - Senha incorreta
Dado que estou na página de login
Quando preencho o campo "Email" com "cesar-kenzo@usp.br"
Quando preencho o campo "Senha" com "testeeesenha"
E clico em Acessar
Então deverei ver a mensagem de erro "Senha incorreta! Tente novamente." na tela de login