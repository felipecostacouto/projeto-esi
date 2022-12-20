Dado('que estou na página de about') do
  visit about_path
end

Quando('preencho o campo sugestao com {string}') do |string|
   page.fill_in :placeholder => 'sugestao', with: 'text text text text'
 end

Quando('clico em Enviar') do
  click_on 'Enviar'
end

Então('deverei ver a mensagem de sucesso {string}') do |string|
  expect(page).to have_content(string)
end

Quando('deixo o campo sugestao vazio') do |string|
   page.fill_in :placeholder => 'sugestao', with: ''
 end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end
