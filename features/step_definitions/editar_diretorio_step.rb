Dado('que estou na página de listagem de diretórios') do
  visit '/diretorios'
end

E ('clico em "Administração"') do
  click_on 'Administração'
end

E ('clico em "Editar"') do
  click_link_or_button('edit-button')
  visit '/diretorios/3/edit'
end

Então ('acesso a página de Edição do Diretório') do
  expect(page).to have_content('Editando Diretório')
  expect(page).to have_content('Nome')
  expect(page).to have_content('Caminho')
end

Quando('clico em "Salvar Diretório" na página de Edição de Diretório') do
  click_on 'Salvar Diretório'
end

Então('o registro deve ser atualizado') do
  expect(page).to have_content('ESI')
  expect(page).to have_content('/root')
end

E('preencho o nome com ""') do
  fill_in 'Nome', :with => ''
end

E('preencho o campo nome com "*ESI"') do
  fill_in 'Nome', :with => '*ESI'
end