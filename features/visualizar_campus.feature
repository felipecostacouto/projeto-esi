#language: pt
Funcionalidade: Visualizar campus
  Como usuário
  Para que eu possa explorar os cursos de diferentes campi
  Eu quero visualizar quais campi estão cadastrados na plataforma

  Cenário: Visualizar campi com sucesso
    Dado que estou na página inicial
    Quando seleciono "Campus" no menu
    Então uma lista de todos os campi será mostrada

  Cenário: Visualizar campi sem sucesso - sem campi cadastrados
    Dado que estou na página inicial
    Quando seleciono "Campus" no menu
    Então um aviso de que não há campi disponíveis deve aparecer