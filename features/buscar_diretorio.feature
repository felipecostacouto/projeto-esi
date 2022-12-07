#language: pt

Funcionalidade: Buscar diretório
Como usuário
Para que eu possa encontrar arquivos e informações
Eu quero buscar diretórios do banco de dados

Cenário: busca do Diretório com sucesso
Dado que estou na página de busca de diretórios
Quando preencho o campo "name" com "root"
E clico em buscar
Então deverei ver o diretório buscado na página buscar

Cenário: busca de Diretório com erro - sem nome
Dado que estou na página de busca de diretórios
E não preencho o search_input
E clico em buscar
Então deverei ver ser redirecionado a página de Busca

Cenário: Diretório não encontrado - diretório não existe
Dado que estou na página de busca de diretórios
Quando preencho o campo "name" com "a!1ç....,,,´/ ? za"
E clico em buscar
Então deverei ver ser redirecionado a página de Busca
