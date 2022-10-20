#language: pt

Funcionalidade: Editar diretório
  Como usuário
  Para que eu possa reorganizar os diretórios

  Cenário: Edição de Diretório com sucesso
    Dado que estou na página de listagem de diretórios
    E existe um diretório com nome "Teste"
    E clico em "Teste"
    E clico em "Editar"
    E preencho os campos com informações válidas
    E clico em "Salvar Diretório"
    Então o registro deve ser atualizado
    E deve ser listado

  Cenário: Edição de Diretório com erro - sem nome
    Dado que estou na página de listagem de diretórios
    E clico em "Teste"
    E clico em "Editar"
    E preencho o nome com ""
    E clico em "Salvar Diretório"
    Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

  Cenário: Edição de Diretório com erro - nome inválido
    Dado que estou na página de listagem de diretórios
    E clico em "Teste"
    E clico em "Editar"
    E preencho o campo nome com "*ESI"
    E clico em "Salvar Diretório"
    Então deverei ver a mensagem de erro "Nome inválido. Não é permitido a utilização dos caracteres especiais"