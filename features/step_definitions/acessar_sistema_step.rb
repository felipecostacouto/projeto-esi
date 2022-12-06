Dado('que estou na página de login') do
    visit login_path
  end

  Quando('preencho o campo Email com {string}') do |string|
    fill_in 'Email', :with => string
  end

  Quando('preencho o campo Senha com {string}') do |string|
    fill_in 'Senha', :with => string
  end
  
  Quando('clico em Acessar') do
    click_on 'Acessar'
  end

  Então('deverei ser redirecionado a página Inicial') do
    visit root_path
  end
  
  Então('deverei ver a mensagem de erro {string} na tela de login') do |string|
    page.should have_css('.errors')
  end