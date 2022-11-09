Dado('que estou na página de cadastro') do
    visit '/registrations/new'
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
  end

  Quando('clico em registrar') do
    click_button 'Registrar'
  end

  Então('ele deve ter sido salvo no banco de dados') do
    user = User.last
  end
  
  Então('deverei ser redirecionado a página Home') do
    visit root_path
  end

  Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ''

  end

  Então('o botão registrar deve estar desabilitado') do
    expect(page).to have_button("Registrar", :disabled => false)
  end
