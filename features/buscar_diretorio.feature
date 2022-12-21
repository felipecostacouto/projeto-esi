#language: pt

Funcionalidade: Buscar diretório
Como usuário
Para que eu possa encontrar arquivos e informações
Eu quero buscar diretórios do banco de dados

Cenário: busca do Diretório com sucesso
Dado que estou na página de busca de diretórios
Quando preencho o campo "name" com "root"
E clico em buscar
Então deverei ver o diretório buscado na página de Resultado

Cenário: busca de Diretório com erro - sem nome
Dado que estou na página de busca de diretórios
E deixo o campo "name" vazio
E clico em buscar
Então deverei a mensagem de erro "Por favor insira nome válido"

Cenário: Diretório não encontrado - diretório não existe
Dado que estou na página de busca de diretórios
Quando preencho o campo "name" com "aws"
E clico em buscar
Então deverei ver a mensagem "Diretório não encontrado, por favor tente novamente."
