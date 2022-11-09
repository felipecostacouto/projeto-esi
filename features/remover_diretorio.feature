#language: pt

Funcionalidade: Deletar diretório
  Como usuário
  Para que eu possa deletar diretórios existentes
  E refactorar a organização

  Cenário: Remoção de Diretório com sucesso
    Dado que estou na página de listagem de diretórios
    E verifico que o Diretório "Teste" existe
    E clico no ícone de Lixeira
    E confirmo a remoção do Diretório
    Então o Diretório "Teste" não deve estar na lista