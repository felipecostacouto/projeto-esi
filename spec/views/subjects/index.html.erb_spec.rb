require 'rails_helper'

RSpec.describe "subjects/index", type: :view do
  before(:each) do
    assign(:subjects, [
      Subject.create!(
        name: "Name",
        teacher: "Teacher",
        campi: "Campi"
      ),
      Subject.create!(
        name: "Name",
        teacher: "Teacher",
        campi: "Campi"
      )
    ])
  end

  it "renders a list of subjects" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    #assert_select cell_selector, text: Regexp.new("Teacher".to_s), count: 2
    #assert_select cell_selector, text: Regexp.new("Campi".to_s), count: 2
  end
end
