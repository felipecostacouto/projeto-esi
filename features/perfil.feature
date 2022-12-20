#language: pt

Funcionalidade: Visualizar perfil
Como usuário
Para que eu possa visualizar minhas informações cadastrais
Eu quero realizar o acesso ao perfil do meu usuário

Cenário: Botão de perfil - Usuário logado
Dado que estou na página inicial
Então deverei ver o botão Perfil na barra de navegação

Cenário: Botão de perfil - Usuário deslogado
Dado que estou na página inicial
Então não deverei ver o botão Perfil na barra de navegação

Cenário: Acesso ao perfil - Usuário logado
Dado que estou na página inicial
Então deverei ver o botão Perfil na barra de navegação
Quando clico no botão Perfil
Então deverei ir para a página de Perfil
E devo ver minhas informações

Cenário: Acesso ao perfil - Usuário deslogado
Dado que estou na página inicial
Quando tento acessar a página de Perfil estando deslogado
Então deverei ser redirecionado para a página de Login