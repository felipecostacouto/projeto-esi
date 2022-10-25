Dado('que estou na página de criação de diretórios') do
  visit '/diretorios/new'
end

Quando('preencho os campos com informações válidas') do
  fill_in 'Nome', :with => 'ESI'
end

Quando('clico em salvar') do
  click_on 'Salvar Diretório'
  diretorio = Diretorio.last
end

Então('um novo diretório deve ser criado') do
  ##diretorio = Diretorio.last

  ##expect(diretorio.name).to eq('ESI')
  ##expect(diretorio.path).to eq('/root/Administração')
  expect(page).to have_content('ESI')
end

Então('deve ser listado') do
  expect(page).to have_content('ESI')
  expect(page).to have_content('root')
end

Dado('não preencho o nome') do
  fill_in 'Nome', :with =>''
end

Dado('preencho o campo nome com "ESI?*?"') do
  fill_in 'Nome', :with =>'ESI?*?'
end

Então('deverei ver a mensagem de erro "É obrigatório informar o nome!"') do
  expect(page).to have_content('É obrigatório informar o nome!')
end

Então('deverei ver a mensagem de erro "Nome inválido. Não é permitido a utilização dos caracteres especiais"') do
  expect(page).to have_content('Nome inválido. Não é permitido a utilização dos caracteres especiais')
end