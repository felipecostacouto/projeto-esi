require 'rails_helper'

RSpec.describe "diretorios/new", type: :view do
  before(:each) do
    assign(:diretorio, Diretorio.new(
      name: "MyString",
      path: "MyString"
    ))
    @diretorios = Diretorio.all
  end

  it "renders new diretorio form" do
    render

    assert_select "form[action=?][method=?]", diretorios_path, "post" do

      assert_select "input[name=?]", "diretorio[name]"

      assert_select "select[name=?]", "diretorio[path]"
    end
  end
end
