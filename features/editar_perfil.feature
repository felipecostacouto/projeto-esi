#language: pt
Funcionalidade: Editar perfil
Como usuário
Para que eu possa editar minhas informações cadastrais
Eu quero realizar a edição dos meus dados na tela de Perfil

Cenário: Edição do perfil - Edição bem-sucedida
Dado que estou na página de perfil
Quando preencho o campo E-mail com "emailteste@gmail.com"
Quando preencho o campo Nome com "Usuário Teste"
E clico em Salvar
Então devo conseguir ver os dados com as informações novas

Cenário: Edição do perfil - Edição falhou
Dado que estou na página de perfil
Quando preencho o campo Email com "emailteste"
Quando preencho o campo Nome com "Usuário Teste"
E clico em Salvar
Então uma mensagem de erro deve aparecer na tela de perfil