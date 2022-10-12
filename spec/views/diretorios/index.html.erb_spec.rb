require 'rails_helper'

RSpec.describe "diretorios/index", type: :view do
  before(:each) do
    assign(:diretorios, [
      Diretorio.create!(
        name: "Name",
        path: "Path"
      ),
      Diretorio.create!(
        name: "Name",
        path: "Path"
      )
    ])
  end

  it "renders a list of diretorios" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Path".to_s, count: 2
  end
end
