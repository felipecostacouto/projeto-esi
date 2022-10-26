#language: pt
Funcionalidade: Cadastrar usuário
    Como usuário
    Para que eu possa fazer uso da plataforma
    Eu quero realizar o cadastro de um usuário no Banco de Dados

Cenário: Cadastro de usuário com sucesso
    Dado que estou na página de cadastro
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    Quando preencho o campo "Email" com "cesar-kenzo@usp.br"
    E clico em registrar
    Então ele deve ter sido salvo no banco de dados
    E deverei ser redirecionado a página Home

Cenário: Cadastro de usuário com erro - sem nome
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Email" com "cesar-kenzo@usp.br"
    E deixo o campo "Nome" vazio
    E clico em registrar
    Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Cadastro de usuário com erro - sem e-mail
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    E deixo o campo "Email" vazio
    E clico em registrar
    Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Cenário: Cadastro de usuário com erro - e-mail inválido
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    E preencho o campo "Email" com "cesar-kenzo-usp@hotmail.com"
    E clico em registrar
    Então deverei ver a mensagem de erro "Email inválido. Não é do Domínio da USP!"

Cenário: Cadastro de usuário com erro - e-mail inválido
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Cesar Ouchi"
    E preencho o campo "Email" com "ce@^dd@hotmail.com"
    E clico em registrar
    Então deverei ver a mensagem de erro "Formato de e-mail Inválido"