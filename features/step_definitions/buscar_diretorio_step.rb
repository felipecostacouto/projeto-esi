Dado('que estou na página de busca de diretórios') do
  visit '/buscar'
end

Quando('preencho o campo Buscar com root') do
    fill_in 'name', :with => 'root'
end

Quando('não preencho o search_input') do
  fill_in 'name', :with => ''
end

Quando('clico em buscar') do
  click_on 'buscar'
end

Então('deverei ver o diretório buscado na página buscar') do
  expect(page).to have_content('root')
end

Quando('preencho o campo buscar com um valor inválido') do
  fill_in 'name', :with => 'a!1ç....,,,´/ ? za'
end

Então('deverei ver ser redirecionado a página de Busca') do
    expect(page).to have_content('Buscar')
    expect(page).to have_content('Buscar Diretório')
end
