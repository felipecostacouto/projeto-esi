#language: pt

Funcionalidade: Editar diretório
  Como usuário
  Para que eu possa reorganizar os diretórios

  Cenário: Edição de Diretório com sucesso
    Dado que estou na página de listagem de diretórios
    E clico em "Administração"
    E clico em "Editar"
    Então acesso a página de Edição do Diretório
    E preencho os campos com informações válidas
    E clico em "Salvar Diretório" na página de Edição de Diretório
    Então o registro deve ser atualizado

  Cenário: Edição de Diretório com erro - sem nome
    Dado que estou na página de listagem de diretórios
    E clico em "Administração"
    E clico em "Editar"
    Então acesso a página de Edição do Diretório
    E preencho o nome com ""
    E clico em "Salvar Diretório" na página de Edição de Diretório
    Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

  Cenário: Edição de Diretório com erro - nome inválido
    Dado que estou na página de listagem de diretórios
    E clico em "Administração"
    E clico em "Editar"
    Então acesso a página de Edição do Diretório
    E preencho o campo nome com "*ESI"
    E clico em "Salvar Diretório" na página de Edição de Diretório
    Então deverei ver a mensagem de erro "Nome inválido. Não é permitido a utilização dos caracteres especiais"