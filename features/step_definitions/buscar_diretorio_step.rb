Dado('que estou na página de busca de diretórios') do
  visit '/welcome/buscar'
end

Quando('preencho o campo search_input com "ESI"') do
    fill_in 'search_input', :with => 'ESI'
end

Quando('clico em Buscar') do
  click_on 'buscar'
end

Então('deverei ver o diretório buscado na página buscar') do
  expect(page).to have_content('ESI')
end

Dado('não preencho o search_input') do
  fill_in 'search_input', :with => ''
end

Dado('clico em Buscar') do
    click_on 'buscar'
end

Então('deverei ver a mensagem de erro "É obrigatório informar o nome do diretório para busca!"') do
  expect(page).to have_content('É obrigatório informar o nome do diretório para busca!')
end

Quando('preencho o campo search_input com um valor inválido') do
  fill_in 'search_input', :with => 'a!1ç....,,,´/ ? za'
end

Quando('clico em buscar') do
  click_on 'Buscar'
end

Então('deverei ver a mensagem de erro "O Diretório que você está buscando não existe!"}') do
    expect(page).to have_content('O Diretório que você está buscando não existe!')
end
