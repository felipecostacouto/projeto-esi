require 'rails_helper'
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'

RSpec.describe "diretorios/index", type: :view do
  before(:each) do
    assign(:diretorios, [
      Diretorio.create!(
        name: "root",
        path: "Path"
      ),
      Diretorio.create!(
        name: "dir1",
        path: "Path"
      ),
      Diretorio.create!(
        name: "dir2",
        path: "Path"
      ),
      Diretorio.create!(
        name: "dir3",
        path: "Path"
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

  it "shows buttons 'Back' for all directory expect for root." do
    @ids_existentes = Diretorio.ids

    @ids_existentes.each { |i|
      visit("/diretorios/" << i.to_s)

      @diretorio_atual = Diretorio.find(i)

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
