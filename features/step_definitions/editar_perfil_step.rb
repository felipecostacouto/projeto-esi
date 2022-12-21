Dado('que estou na página de perfil') do
    visit loginTest_path
    expect(page).to have_selector(:link_or_button, 'Perfil')
    visit perfil_path
  end
  
  Quando('clico em Salvar') do
    click_on 'Salvar'
  end

  Quando('preencho o campo Nome com {string}') do |string|
    fill_in 'Name', with: string
  end

  Quando('preencho o campo E-mail com {string}') do |string|
    fill_in 'Email', with: string
  end
  
  Então('devo conseguir ver os dados com as informações novas') do
    expect(page).to have_content('Perfil atualizado com sucesso!')
  end
  
  Então('uma mensagem de erro deve aparecer na tela de perfil') do
    expect(page).to have_content('ERRO:')
  end