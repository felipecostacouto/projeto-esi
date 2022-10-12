Dado('que estou na página de criação de diretórios') do
  visit '/diretorios/new'
end

Quando('preencho os campos com informações válidas') do
  fill_in 'Name', :with => 'ESI'
  fill_in 'Path', :with => 'root'
end

Quando('clico em salvar') do
  click_on 'Salvar Diretório'
end

Então('um novo diretório deve ser criado') do
  diretorio = Diretorio.order('id').last
  expect(diretorio.name).to eq('ESI')
  expect(diretorio.path).to eq('root')
end

Então('deve ser listado') do
  expect(page).to have_content('ESI')
  expect(page).to have_content('root')
end

Dado('não preencho o nome') do
  fill_in 'Name', :with =>''
end

Dado('preencho o campo nome com "ESI?*?"') do
  fill_in 'Name', :with =>'ESI?*?'
end

Então('deverei ver a mensagem de erro "É obrigatório informar o nome!"') do
  expect(page).to have_content('É obrigatório informar o nome!')
end

Então('deverei ver a mensagem de erro "Nome inválido. Não é permitido a utilização dos caracteres especiais"') do
  expect(page).to have_content('Nome inválido. Não é permitido a utilização dos caracteres especiais')
end