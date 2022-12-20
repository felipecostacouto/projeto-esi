Então('deverei ver o botão Perfil na barra de navegação') do
    visit loginTest_path
    expect(page).to have_selector(:link_or_button, 'Perfil')
  end
  
  Então('não deverei ver o botão Perfil na barra de navegação') do
    visit root_path
    expect(page).not_to have_content('Perfil')
  end
  
  Quando('clico no botão Perfil') do
    click_on 'Perfil'
  end
  
  Então('deverei ir para a página de Perfil') do
    visit perfil_path
  end
  
  Então('devo ver minhas informações') do
    expect(page).to have_css('.user-information')
  end
  
  Quando('tento acessar a página de Perfil estando deslogado') do
    visit perfil_path
    expect(page).to have_selector(:link_or_button, 'Login')
  end
  
  Então('deverei ser redirecionado para a página de Login') do
    visit perfil_path
    expect(page).to have_content('Acessar')
  end