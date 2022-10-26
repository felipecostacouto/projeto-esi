Dado('que estou na página de cadastro') do
    visit signup_path
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
  end

  Quando('clico em registrar') do
    click_on 'Registrar'
  end

  Então('ele deve ter sido salvo no banco de dados') do
    User = User.last
  end
  
  Então('deverei ser redirecionado a página Home') do
    visit root_path
  end
  
  Dado('que estou na página de cadastro de aluno') do
    visit signup_path
  end
  
  Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ''
  end
  
  Então('deverei ver a mensagem de erro {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end