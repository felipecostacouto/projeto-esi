#language: pt
Funcionalidade: Cadastrar usuário
    Como usuário
    Para que eu possa fazer uso da plataforma
    Eu quero realizar o cadastro de um usuário no Banco de Dados

Cenário: Cadastro de usuário com sucesso
    Dado que estou na página de cadastro
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    Quando preencho o campo "Email" com "cesar-kenzo@usp.br"
    Quando preencho o campo "Senha" com "123"
    Quando preencho o campo "Confirmacao" com "123"
    E clico em registrar
    Então deverei ser redirecionado a página Home
    E ele deve ter sido salvo no banco de dados

Cenário: Cadastro de usuário com erro - sem nome
    Dado que estou na página de cadastro
    Quando preencho o campo "Email" com "cesar-kenzo@usp.br"
    Quando preencho o campo "Senha" com "123"
    Quando preencho o campo "Confirmacao" com "123"
    E deixo o campo "Nome" vazio
    Então o botão registrar deve estar desabilitado

Cenário: Cadastro de usuário com erro - sem e-mail
    Dado que estou na página de cadastro
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    Quando preencho o campo "Senha" com "123"
    Quando preencho o campo "Confirmacao" com "123"
    E deixo o campo "Email" vazio
    Então o botão registrar deve estar desabilitado

Cenário: Cadastro de usuário com erro - e-mail inválido
    Dado que estou na página de cadastro
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    Quando preencho o campo "Senha" com "123"
    Quando preencho o campo "Confirmacao" com "123"
    E preencho o campo "Email" com "cesar-kenzo-usp@hotmail.com"
    Então o botão registrar deve estar desabilitado

Cenário: Cadastro de usuário com erro - e-mail inválido
    Dado que estou na página de cadastro
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    Quando preencho o campo "Senha" com "123"
    Quando preencho o campo "Confirmacao" com "123"
    E preencho o campo "Email" com "ce@^dd@hotmail.com"
    Então o botão registrar deve estar desabilitado