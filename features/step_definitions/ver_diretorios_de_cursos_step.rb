Dado('que estou na página inicial') do
  visit '/welcome/index'
end

Então('deve existir uma lista de diretórios para cada curso') do
  # expect(page).to have_content('Administração')
end