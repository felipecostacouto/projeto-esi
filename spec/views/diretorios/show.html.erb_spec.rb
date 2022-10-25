require 'rails_helper'

RSpec.describe "diretorios/show", type: :view do
  before(:each) do
    @diretorio = assign(:diretorio, Diretorio.create!(
      name: "Name",
      path: "Path"
    ))
  end

  # it "renders attributes in <h6>" do
  #   render
  #   expect(rendered).to match(/Name/)
  #   expect(rendered).to match(/Path/)
  # end
end
