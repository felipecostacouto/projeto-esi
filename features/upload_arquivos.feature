#language: pt
Funcionalidade: Fazer upload de arquivos
  Como usuário
  Para que eu possa armazenar arquivos na plataforma
  Eu quero realizar o upload de um arquivo em um diretório específico

Cenário: Upload de arquivo com sucesso
  Dado que estou na página de um diretório específico
  Quando arrasto um arquivo para onde estão os diretórios
  Então deverá aparecer o arquivo na lista de arquivos dentro do diretório que estou
  E ele deve ter sido salvo no banco de dados

Cenário: Upload de arquivo com erro - muito grande
  Dado que estou na página de um diretório específico
  Quando arrasto um arquivo para onde estão os diretórios
  E o arquivo é muito grande
  Então deve aparecer mensagem dizendo que o arquivo é muito grande

Cenário: Upload de arquivo com erro - extensão inválida
  Dado que estou na página de um diretório específico
  Quando arrasto um arquivo para onde estão os diretórios
  E o arquivo tem extensão inválida
  Então deve aparecer mensagem dizendo que o arquivo não tem extensão válida

Cenário: Upload de arquivo com erro - duplicidade
  Dado que estou na página de um diretório específico
  Quando arrasto um arquivo para onde estão os diretórios
  E já existe outro arquivo com o mesmo nome naquele diretório
  Então deve aparecer mensagem perguntando se sobrescreve ou manter o arquivo