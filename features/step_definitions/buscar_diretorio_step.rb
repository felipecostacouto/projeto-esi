Dado('que estou na página de busca de diretórios') do
  visit '/welcome/buscar'
end

Quando('preencho o campo buscar com "root"') do
    fill_in 'buscar', :with => 'root'
end

Quando('clico em Buscar') do
  click_on 'buscar'
end

Então('deverei ver o diretório buscado na página buscar') do
  expect(page).to have_content('root')
end

Dado('não preencho o buscar') do
  fill_in 'buscar', :with => ''
end

Dado('clico em buscar') do
    click_on 'buscar'
end

Quando('preencho o campo buscar com um valor inválido') do
  fill_in 'buscar', :with => 'a!1ç....,,,´/ ? za'
end

Quando('clico em buscar') do
  click_on 'buscar'
end

Então('deverei ver a mensagem de erro "O Diretório que você está buscando não existe!"') do
    expect(page).to have_content('O Diretório que você está buscando não existe!')
end
