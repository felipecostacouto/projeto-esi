Dado('que estou na página de busca de diretórios') do
    visit '/welcome/buscar'
end

Quando('preencho o campo search-input com "ESI"') do
    fill_in search_input, :with => 'ESI'
end

Quando('clico em buscar') do
    click_on 'Buscar'
end

Então('o diretório deve estar presente no banco de dados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver o diretório buscado na página') do
  expect(page).to have_content('ESI')
  expect(page).to have_content('root')
end

Quando('deixo o campo Buscar vazio') do
  fill_in 'Buscar', :with => ''
end

Então('deverei ver a mensagem de erro "É obrigatório digitar o nome para buscar!"') do
  expect(page).to have_content('É obrigatório digitar o nome para buscar!')
end

Quando('o nome preenchido no campo {string} não está presente no banco de dados') do
  pending # Write code here that turns the phrase above into concrete actions
end
