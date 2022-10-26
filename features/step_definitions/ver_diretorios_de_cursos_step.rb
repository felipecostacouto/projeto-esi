Dado('que estou na página inicial') do
  visit root_path
end

Então('deve existir uma lista de diretórios para cada curso') do
  # expect(page).to have_content('Administração')
end