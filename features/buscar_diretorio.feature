#language: pt

Funcionalidade: Buscar diretório
Como usuário
Para que eu possa encontrar arquivos e informações
Eu quero buscar diretórios do banco de dados

Cenário: busca do Diretório com sucesso
Dado que estou na página de busca de diretórios
Quando preencho o campo "Buscar diretório" com "Diretório1"
E clico em buscar
Então o diretório deve estar presente no banco de dados
E deverei ver o diretório buscado na página

Cenário: Diretório não encontrado - sem nome
Dado que estou na página de busca de diretórios
Quando deixo o campo "Buscar diretório" vazio
E clico em buscar
Então deverei ver a mensagem de erro "É obrigatório informar o nome do diretório para busca!"

Cenário: Diretório não encontrado - diretório não existe
Dado que estou na página de busca de diretórios
Quando preencho o campo "Buscar diretório" com "a!1ç....,,,´/ ? za"
E clico em buscar
E o nome preenchido no campo "Buscar diretório" não está presente no banco de dados
Então deverei ver a mensagem de erro "O Diretório que você está buscando não existe!"
