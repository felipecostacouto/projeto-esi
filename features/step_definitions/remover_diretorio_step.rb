E('verifico que o Diretório "Administração" existe') do
  expect(page).to have_content('Administração')
end

E('clico no ícone de Lixeira') do
  page.find('.bi.bi-trash.link-text').click
end

E('confirmo a remoção do Diretório') do
  #click_on 'OK'
  #page.driver.submit :delete, '/diretorios/2/delete_diretorio', {}
end

Então('o Diretório "Administração" não deve estar na lista') do
  expect(page).not_to have_content('Administração')
end