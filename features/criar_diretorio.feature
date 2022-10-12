#language: pt
# Não foi feita validação de Caminho, pois por enquanto a funcionalidade cria apenas na raiz
Funcionalidade: Criar diretório
Como usuário
Para que eu possa disponibilizar arquivos e informações
Eu quero criar diretórios para melhor organização

Cenário: Criação de Diretório com sucesso
Dado que estou na página de criação de diretórios
E preencho os campos com informações válidas
E clico em salvar
Então um novo diretório deve ser criado
E deve ser listado

Cenário: Criação de Diretório com erro - sem nome
Dado que estou na página de criação de diretórios
E não preencho o nome
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Criação de Diretório com erro - nome inválido
Dado que estou na página de criação de diretórios
E preencho o campo nome com "ESI?*?"
E clico em salvar
Então deverei ver a mensagem de erro "Nome inválido. Não é permitido a utilização dos caracteres especiais"