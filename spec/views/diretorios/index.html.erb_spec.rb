require 'rails_helper'
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'

RSpec.describe "diretorios/index", type: :view do
  before(:each) do
    assign(:diretorios, [
      Diretorio.create!(
        name: "dir1",
        path: "/",
        flPublic:true
      ),
      Diretorio.create!(
        name: "dir2",
        path: "/",
        flPublic:true
      ),
      Diretorio.create!(
        name: "dir3",
        path: "/",
        flPublic:true
      ),
      Diretorio.create!(
        name: "dir4",
        path: "/",
        flPublic:false
      ),
    ])

    assign(:diretorios_mapa, [
      DiretoriosMapa.create!(
        parent: Diretorio.where(name: 'root').ids[0],
        child: Diretorio.where(name: 'dir1').ids[0]
      ),
      DiretoriosMapa.create!(
        parent: Diretorio.where(name: 'dir1').ids[0],
        child: Diretorio.where(name: 'dir2').ids[0]
      ),
      DiretoriosMapa.create!(
        parent: Diretorio.where(name: 'dir1').ids[0],
        child: Diretorio.where(name: 'dir3').ids[0]
      ),
      DiretoriosMapa.create!(
        parent: Diretorio.where(name: 'root').ids[0],
        child: Diretorio.where(name: 'dir4').ids[0]
      )
    ])
  end

  it "renders a list of diretorios" do
    render
    assert text: "Name".to_s, count: 2
  end

  it "shows buttons 'Editar' and 'Criar' for all directory" do
    @ids_existentes = Diretorio.ids

    @ids_existentes.each { |i|
      visit("/diretorios/" << i.to_s)
      expect(page).to have_button('Editar')
      expect(page).to have_button('Criar')
    }
  end

  it "doesn't show hidden directory" do
    visit("/menu")
    expect(page).not_to have_content('dir4')
  end

  it "shows buttons 'Back' for all directory except for root." do
    @ids_existentes = Diretorio.all
    @ids_existentes.each { |i|
      print(i.name)
      print(i.path)
      print('\n')
    }
    @ids_existentes.each { |i|
      visit("/diretorios/" << i.id.to_s)

      @diretorio_atual = Diretorio.find(i.id)

      if @diretorio_atual[:name] == 'root'
        expect(page).not_to have_button('Back')
      else
        expect(page).to have_button('Back')
      end
    }
  end
end

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"
  # config.use_transactional_fixtures = true
  # config.infer_base_class_for_anonymous_controllers = false
  # config.order = "random"
  # # Include path helpers
  # config.include Rails.application.routes.url_helpers

  config.include Capybara::DSL

end
