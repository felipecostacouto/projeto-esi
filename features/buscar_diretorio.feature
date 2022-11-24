#language: pt

Funcionalidade: Buscar diretório
Como usuário
Para que eu possa encontrar arquivos e informações
Eu quero buscar diretórios do banco de dados

Cenário: busca do Diretório com sucesso
Dado que estou na página de busca de diretórios
Quando preencho o campo "buscar" com "root"
E clico em buscar
Então deverei ver o diretório buscado na página buscar

Cenário: busca de Diretório com erro - sem nome
Dado que estou na página de busca de diretórios
E não preencho o search_input
E clico em buscar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Diretório não encontrado - diretório não existe
Dado que estou na página de busca de diretórios
Quando preencho o campo "buscar" com "a!1ç....,,,´/ ? za"
E clico em buscar
Então deverei ver a mensagem de erro "O Diretório que você está buscando não existe!"
