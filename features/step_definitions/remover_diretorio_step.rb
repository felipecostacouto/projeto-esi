E('verifico que o Diretório "Teste" existe') do
  expect(page).to have_content('Teste')
  expect(page).to have_content('Teste')
end

E('clico no ícone de Lixeira') do
  page.find('.bi.bi-trash.link-text').click
end

E('confirmo a remoção do Diretório') do
  #click_on 'OK'
  #page.driver.submit :delete, '/diretorios/2/delete_diretorio', {}
end

Então('o Diretório "Teste" não deve estar na lista') do
  expect(page).not_to have_content('Teste')
end