#language: pt

Funcionalidade: About page
Como usuário
Para que enviar propostas de melhoria para o sistema
Eu quero cadastrar um comentário no banco de dados

Cenário: Cadastro de comentário com sucesso
Dado que estou na página de about
Quando preencho o campo "sugerir" com "text"
E clico em Enviar
Então ele deve ter sido salvo no banco de dados
E deverei ver a mensagem de sucesso "Sua sugestão foi recebida por nossa equipe, agradecemos a colaboração!"

Cenário: Cadastro de comentário com erro - sem sugestão
Dado que estou na página de about
Quando deixo o campo "sugerir" vazio
E clico em Enviar
Então deverei ver a mensagem de erro "É obrigatório inserir algum texto no campo de sugestões!" na tela about page
