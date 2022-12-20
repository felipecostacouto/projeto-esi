Dado('que estou na página de busca de diretórios') do
  visit '/buscar'
end

Quando('preencho o campo Buscar com root') do
    fill_in 'name', :with => 'root'
end

Quando('clico em buscar') do
  click_on 'buscar'
end

Então('deverei ver o diretório buscado na página de Resultado') do
  expect(page).to have_content('root')
end


Quando('deixo o campo buscar vazio') do |string|
  fill_in 'name', :with => ''
end

Então('deverei a mensagem de erro {string}') do |string|
  expect(page).to have_content('Por favor insira nome válido')
end

Quando('preencho o campo buscar com um diretório que não existe') do
  fill_in 'name', :with => 'aws'
end

Então('deverei ver ser redirecionado a página de Busca') do
  expect(page).to have_content('Diretório não encontrado, por favor tente novamente.')
end
