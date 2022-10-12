require 'rails_helper'

RSpec.describe "diretorios/edit", type: :view do
  before(:each) do
    @diretorio = assign(:diretorio, Diretorio.create!(
      name: "MyString",
      path: "MyString"
    ))
  end

  it "renders the edit diretorio form" do
    render

    assert_select "form[action=?][method=?]", diretorio_path(@diretorio), "post" do

      assert_select "input[name=?]", "diretorio[name]"

      assert_select "input[name=?]", "diretorio[path]"
    end
  end
end
